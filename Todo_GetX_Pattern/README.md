## GetX Pattern - Project Structure

```
|--lib
    |--main.dart
    |--app
        |--core
            |--values -> Application-specific values, rarely change
                |--colors.dart
                |--endpoints.dart
                |--strings.dart
                |--languges
                    |--from
                        |--vi.dart
                        |--en.dart
                    
            |--themes -> Contains the theme of the application
                |--light_theme.dart
                |--dart_theme.dart
            |--utils
                |--helpers -> Fixed helpers for querying, filtering,...
                    |--http.helper.dart
                |--keys.dart -> Globalkeys inside the form

        |--data
            |--services
                |--service.dart
                |--repository.dart
            |--models -> Data modeling, fromJson, toJson
            |--providers -> Make queries with the API
            |--repositories -> Declare the implementation methods
            |--datasources -> Here can be the details of the provider -> Split into local and internet data
            
        |--modulues
            |--function (screen) -> Segment by function or screen (recommended if it has the same concept or function)
                |--bindings -> Calling Controllers and Usecases
                |--controllers -> Handling logic for user operations
                |--views -> User interface
                |--widgets -> Widgets used in view

        |--routes -> Application Routing
            |--app_pages.dart
            |--app_routes.dart

        |--global_widgets -> Widgets are used on multiple modules
```

[You can learn more about this architecture here](https://github.com/kauemurakami/getx_pattern)
