# Registration_Danny

**Development using ASP.NET Framework 4 and using c# languages**
There's no database in this project, only using inmemory caching

## Reference
In this project, i'm only using 1 internal reference from Visual Studio (System.Runtime.Caching).Theres no any reference from outside Visual Studio 2015, you only need to import the internal reference

    1.Right click on the reference in the project
    2.Browse system.runtime.caching
    3.Check the box 
    4.Click OK

## CSS Style
I'm also using internal CSS for styling

## Cache Username dan Password
In this project, i'm using the caching method store on register and then get the data on another page with same cache
This cache still have flaws, such as:

       1.still doesn't know how to add the cache data
         even though i'm already using adding in the register, still doesn't add the data in cache
         so when user register, the data replace from old to another new data
       2.the cache value is  dataset, already try list and dictionary before but still cannot convert when
         i'm transfer the cache
       
If you want to check the project, modify or adding some feature in the program, feel free to make change,clone, or download the repository

Thank You
