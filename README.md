# edenred_test

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


# Version of the development tools

- Flutter 3.13.3 • channel stable • https://github.com/flutter/flutter.git
- Tools • Dart 3.1.1 • DevTools 2.25.0

# Project General Flows

When the project is started you'll see the splash screen then moving ahead into the 
SignUp page, inside the SignIn,SignUp I commented the validations on the fields so 
once we clicked on the submit button so I'm moving the user into the main page as 
verified user. But inside the SignUp page if you clicked on the `Continue as guest?` 
and then when you click on the submit button (no need to fill the information since I disabled 
the validations on the fields in these case.) I'm moving the user into main page as unverified
user so from here I'm detecting if the user is verified or not.

Inside the SplashScreen I put usecase for checking if the user logged in before or no but 
also it's disabled, I put it to make the flow is completed in the code to check it, in that usecase
we can move the user into main page directly if he signed in/up before and the token is valid.


# Project Structure

I used the Entities directly but in generic cases I should implement models
and each entity should be extends from the model and the json serialization should be inside
the models, and I understand this point as you see in the code check [BaseResponseModel] class.

I implemented the [InputValidators] class and it's very important since we can use it in 
the all TextFields to put the validations on the all of them and once we modified specific 
function from that class so it'll reflected in the all widgets inside the project
(that's using that function), and for sure it'll not be the final code for it.


# Acceptance Criteria 

On another hand, from case 05 into case 07, these cases have to be implemented also in the backend 
I also did these checking cases in the frontend but I didn't reflect the response on the 
UI since the idea is clear, you can check the [BeneficiaryTopUpRepositoryImpl] class 
in [topUp] method, I left some notes and commented code and it's suffices.

# Video Demo

You can check the demo here in the link below:

https://drive.google.com/file/d/1vctylDoZhsYkny4Q4xFFD7SB4asFYL5C/view?usp=sharing