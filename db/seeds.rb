intel = Company.create(name: "Intel", role: "buyer")
microsoft = Company.create(name: "Microsoft", role: "buyer")
qualcomm = Company.create(name: "Qualcomm", role: "supplier")
coupa = Company.create(name: "Coupa", role: "supplier")

User.create(name: "Jim Halpert", role: "sales", company: intel)
User.create(name: "Dwight Schrutte", role: "sales", company: intel)
User.create(name: "Michael Scott", role: "executive", company: coupa)
User.create(name: "Kevin Malone", role: "purchasing", company: coupa)
User.create(name: "Angela Martin", role: "purchasing", company: coupa)
User.create(name: "Ryan Howard", role: "executive", company: microsoft)
User.create(name: "Kelly Kapoor", role: "marketing", company: microsoft)
User.create(name: "Phyllis Vance", role: "sales", company: qualcomm)
User.create(name: "Toby Flenderson", role: "marketing", company: qualcomm)
User.create(name: "Meredit Palmer", role: "marketing", company: qualcomm)
User.create(name: "Oscar Martinez", role: "purchasing", company: intel)
User.create(name: "Creed Bratton", role: "executive", company: coupa)
User.create(name: "Andy Bernard", role: "sales", company: qualcomm)
User.create(name: "Erin Hannon", role: "marketing", company: coupa)
User.create(name: "Daryl Philbin", role: "marketing", company: coupa)
