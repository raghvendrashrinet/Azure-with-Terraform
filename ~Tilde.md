# Tilde (~) 

📌 1. ~> 1.2.0  means: "Allow only patch-level changes, but not major/minor upgrades." 
  Allows:
   ✔ 1.2.1
   ✔ 1.2.5
   ✔ 1.2.99
  Does NOT allow:
   ✖ 1.3.x
   ✖ 2.x.x 
  ⇒ Only patch updates allowed.

📌 2. ~> 1.2 (minor version allowed, but not major) 
  Allows:
   ✔ 1.2.0
   ✔ 1.3.0
   ✔ 1.4.5
  Does NOT allow:
   ✖ 2.x.x
Patch + minor updates allowed (within major version 1). 

eg : ~> 1.2   means >= 1.2.0 AND < 2.0.0 (1.1 not allowed)

📌 3. ~> 3
Allows:
✔ 3.0.0
✔ 3.49.2
Does NOT allow:
✖ 4.x.x
⇒ Any update within major version 3 is allowed.

Example : version = "~> 3.90"
    Allowed        
    •  Minimum version: 3.90.0
    • Maximum version: 3.99.x
    • Does NOT allow 4.x.x
 
