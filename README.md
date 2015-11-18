These two scripts allow a user to generate a list of password permutations based on a known password format and sequentially test each password on an Windows GUI executable. 

Useage example:  
```>> gp.rb > perms.txt```

perms.txt:

    leet  
	lee7  
	le3t  
	le37  
	...    

Test passwords:

    >> tp.rb  
    >> Testing leet  
    >> Testing lee7  
    >> Testing le3t  
    >> The password is le3t

In the scripts, the text surrounded with ## must be replaced with strings specific to the application being tested.