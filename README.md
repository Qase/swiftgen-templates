# SwiftGen – templates
SwiftGen is a tool to automatically generate Swift code for your project resources(such as images, localized strings, etc.). More info in [SwiftGen Github](https://github.com/SwiftGen/SwiftGen).

This repo contains folder with template config and our custom templates for generating extensions of the resources.

# Setup for new project
1. Check if you have Swiftgen installed otherwise run:
    ```
    brew install swiftgen
    ```
2. Setup fastlane from the [template](https://github.com/Qase/BuildingTemplates-iOS)
3. Run:
    ```
    fastlane setup_swiftgen
    ``` 
   this will download swiftgen folder into the project root folder
4. Open `swiftgen` folder in the project root folder
5. Open `swiftgen.yml` file
6. Change `inputs` paths for the specific resources
7. Run swiftgen:
    ```
    swiftgen
    ```

# Update templates
If the templates were updated just run:
```
fastlane update_swiftgen_templates
```

# How to use SwiftGen
Open `swiftgen` folder and run:
```
swiftgen
```
It's going to generate extensions for all defined resources in the swiftlint config.

# Sample project
Sample project in SPM is in the develop branch.
If you want to update templates create branch from master without the sample project.
