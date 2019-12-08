# Q26. 以下の２つのハッシュを合体させた新しいハッシュを作成してください
# {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
# {JavaScript: "console.log", R: "print", Ruby: "puts"}

code1 =  {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
code2 =  {JavaScript: "console.log", R: "print", Ruby: "puts"}
joint_code = code1.merge(code2)
p joint_code
