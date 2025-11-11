plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.codify.ott"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        isCoreLibraryDesugaringEnabled = true  // Yeh add karo - desugaring enable karega (Kotlin DSL syntax)
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        // TODO: Specify your own unique Application ID .
        applicationId = "com.codify.ott"
        // You can update the following values to match your application needs.
        // For more information, see: https://flutter.dev/to/review-gradle-config.
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = 4
        versionName = flutter.versionName
        multiDexEnabled = true  // Yeh bhi add karo, agar minSdk < 21 hai (desugaring ke saath safe rahega) - Kotlin DSL syntax
    }

    signingConfigs {
        create("release") {
            storeFile = file("my-release-key.jks") // Root se path (adjust if needed)
            storePassword = "123456" // Actual password daal, secure kar (env var use kar production mein)
            keyAlias = "my-key-alias"
            keyPassword = "123456" // Actual key password
        }
    }

    buildTypes {
        getByName("release") {
            signingConfig = signingConfigs.getByName("release")
            isMinifyEnabled = true // Ye enable kar—error fix ho jayega
            isShrinkResources = true
            proguardFiles(getDefaultProguardFile("proguard-android-optimize.txt"), "proguard-rules.pro")
        }
    }
}

flutter {
    source = "../.."
}

dependencies {
    // Yeh block add karo file ke end mein (agar already hai to usme add karo)
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.5")  // Updated to latest version 2.1.5 (as of Oct 2025)
    // ... baaki dependencies jo already hongi (jaise implementation 'androidx.multidex:multidex:2.0.1' if needed)
}