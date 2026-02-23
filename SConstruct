env = Environment()

env.Tool("compilation_db")
env.CompilationDatabase()


conan_deps = SConscript("conan/SConscript_conandeps")
conan_deps = conan_deps["conandeps"]
conan_deps["LIBS"].remove("Catch2")
print(conan_deps)
env.AppendUnique(**conan_deps)

env.Program("main", "main.cpp")
