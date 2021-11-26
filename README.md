# theaterfy

## Routes Service

In the app/routes folder, there's a RoutesService build using Fluro package to define the app routes (Params, Args)

The question is: Is it a good approach for seamless, easy and clean navigation for Flutter??

## How it starts:

![image](https://user-images.githubusercontent.com/13781127/143621405-3da8edcc-85a8-439b-9f1c-421822045929.png)

`routesService.key` is how we bind the `NavigationState` and remove the need for BuildContext to use the `Navigator.of(context)`

`key.currentState!.pushNamed(routeName, arguments: arguments);` to push a new page

## How to use:

![image](https://user-images.githubusercontent.com/13781127/143621851-a6a49398-b9db-407e-b99c-105211fcc2ce.png)

