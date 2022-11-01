# FormPaddingStrangeness

In iOS 16.1, if a Form or List has cells with any vertical padding 
applied, the Form adds extra top and bottom padding in the cell outside of 
the content. This means it's essentially impossible to add just one or two 
points of padding to a cell's content, because of the additional padding 
added behind it.

![Example](https://github.com/UberJason/FormPaddingStrangeness_iOS-16.1/blob/main/Example.png)
