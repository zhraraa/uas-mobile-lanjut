import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController passwordController = TextEditingController();
  
  bool _isObscure = true;
  bool isChecked = false;

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      
      body:Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child:Text(
                "Sign In",
                style: Theme.of(context).textTheme.headlineMedium,
              ),
            ),
            SizedBox(height: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    hintText: 'sample@gmail.com',
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    prefixIcon: Icon(
                      Icons.mail_outline,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                SizedBox(height: 10,),
                TextField(
                  keyboardType: TextInputType.visiblePassword,
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: InputDecoration(
                    hintText: 'Masukkan Password',
                    hintStyle: Theme.of(context).textTheme.bodyMedium,
                    prefixIcon: Icon(
                      Icons.lock_outlined,
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                      size: 20,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isObscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                        color: Theme.of(context).colorScheme.onSurfaceVariant,
                        size: 20,
                      ),
                      onPressed: (){
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                    ),
                    filled: true,
                    fillColor: Theme.of(context).colorScheme.surfaceContainerHighest,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 3,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked = newValue ?? false;
                            });
                          },
                        ),
                        SizedBox(width: 2,),
                        Text(
                          'Ingat Saya',
                          style: Theme.of(context).textTheme.bodySmall,
                        )
                      ],
                    ),
                    Text(
                      'Lupa Password?',
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
                SizedBox(height: 10,),
                
                SizedBox(
                  height: 35,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Theme.of(context).colorScheme.surface,
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      textStyle: Theme.of(context).textTheme.bodyMedium
                    ),
                    child: Text("Sign In"),
                  ),
                )
                
                
              ],
            )
          ],
        )
      )
      
    );
  }
}