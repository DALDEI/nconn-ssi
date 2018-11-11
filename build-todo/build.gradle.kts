/* * This file was generated by the Gradle 'init' task.
 *
 * This is a general purpose Gradle build.
 * Learn how to create Gradle builds at https://guides.gradle.org/creating-new-gradle-builds/
 */
import io.spring.gradle.dependencymanagement.dsl.DependencyManagementExtension
import org.jetbrains.kotlin.gradle.tasks.KotlinCompile
//import nexstra.client.*
import org.codehaus.groovy.tools.shell.util.Logger.io
import nexstra.client.StepsTask
import nexstra.CreatePackageTask
import nexstra.DeployPackageTask

import nexstra.*
import  nexstra.CloudExtension
import nexstra.CloudResources.*


buildscript {
  configure(listOf(repositories, project.repositories)) {
    gradlePluginPortal()
  }
  repositories {
    mavenLocal()
    maven { url = uri("../build/repo")}
    jcenter()

  }
}

val kotlinVersion= "1.2.61"
val bucket = "nexstra-com-repo-us-west-2"
val log4j_version = "2.8.+" // jetty issues
val awsCredentials =""
repositories {
   jcenter()
   mavenLocal()
  maven { url = uri("../build/repo")}
   ivy {
     url = uri("s3://${bucket}/ivy")
     if (rootProject.hasProperty("awsAccessKey")) {
       credentials(org.gradle.api.credentials.AwsCredentials::class.java) {
         accessKey = rootProject.findProperty("awsAccessKey") as String
         secretKey = rootProject.findProperty("awsSecretKey") as String
       }
     }
   }
 }

plugins {
  `java-gradle-plugin`
  `kotlin-dsl`
//  kotlin("jvm").version(kotlinVersion)
  java
  `maven-publish`
  id("io.spring.dependency-management") version "1.0.6.RELEASE"
  id("nexstra.core-dsl") version "1.0.1"
  id("nexstra.docstore-dsl") version "1.0.6"
  id("nexstra.client-dsl") version "1.0.1"

}
//apply plugin: 'nexstra.client-dsl'
//apply plugin: 'io.spring.dependency-management'
dependencyManagement {
    imports {
      mavenBom("com.amazonaws:aws-java-sdk-bom:1.11.+")
     // mavenBom("com.amazonaws:aws-xray-recorder-sdk-bom:1.+")
     mavenBom("org.apache.logging.log4j:log4j-bom:2.11.0")
   }
}

val awsutils by configurations.creating

dependencies {
  implementation(kotlin("stdlib",kotlinVersion) as String)
  implementation(kotlin("reflect",kotlinVersion) as String)
  awsutils("nconnect-v2:awsutils" )
  implementation("com.amazonaws:aws-java-sdk-stepfunctions:")

}
configurations.forEach { config->
  config.resolutionStrategy.eachDependency {
    val details = this
    if (details.requested.group == "org.jetbrains.kotlin"
        && details.requested.name.startsWith("kotlin-")) {
      details.useVersion(kotlinVersion)
    }
  }

}

val workflowDir = "${buildDir}/workflow"
val stepsDir = "${buildDir}/steps"
val cloudDir ="${buildDir}/cloud"
val cftemplate = "${cloudDir}/cloudformation-template.yml"
val serverless = "${cloudDir}/serverless-template.yml"
val templateDir="${projectDir}/templates"
val build = this

cloud {
  bucket = build.bucket
  resources {
   //   template(name="template",template=file( "template.yml" ),properties= "STEPS" to  TextResourceValue("<INSERT STEPS>") )
    }
}

tasks {

 "createPackage"(CreatePackageTask::class) {
     dependsOn("mergeTemplate")
 }

  "deployPackage"(DeployPackageTask::class) {
     dependsOn("createPackage")
  }
  "mergeTemplate"(MergeTemplateTask::class) {
     dependsOn("createTemplate")
    templateFile =file("${templateDir}/cloudformation-template.yml")
    outputFile = file(cftemplate)
    source=fileTree(workflowDir)
    include("*.yml")
  }

  "createTemplate"(CreateTemplateTask::class) {
    dependsOn("stepFunction")
      templateFile =file("${templateDir}/step-template.yml")
      tag="STEPS"
      extension = "yml"
  }
}