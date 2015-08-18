# DynamicViewSize
Change view content size based on its subview size using constrant.

# Using constraint to increase superview height
 - Set height constraint to subview.
 - Set vertical constraint in superview to main view and change its priority to low
 - Set vertical constraint in subview to superview. (with requerid priority)
 - Set all other constraints to see the views correctly
 
# Code
 - create a IBOutlet for subview height constraint

That just increase or decrease the subview height constraint
```
-(void)increase {
    NSLog(@"increase");
    [UIView animateWithDuration:0.2 animations:^{
        self.constraintSubviewHeight.constant += 10;
    }];

}

-(void)decrease {
    NSLog(@"decrease");
    [UIView animateWithDuration:0.2 animations:^{
        self.constraintSubviewHeight.constant -= 10;
    }];
}
```



![](/animation.gif)
