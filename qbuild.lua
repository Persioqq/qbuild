qbuild = {
    compiler = "",
    lang_std = "",
    compiler_flags = "",
    include_path = "",
    src_files = "",
    linker_flags = "",
    obj_name = "",
}

function qbuild:build()
    print("qbuild: compiling " .. self.src_files)
    os.execute(self.compiler .. " " .. self.lang_std .. " " .. self.compiler_flags .. " " ..
        self.include_path .. " " .. self.src_files .. " " .. self.linker_flags .. " -o " .. self.obj_name)
end

function qbuild:clean()
    print("qbuild: cleaning " .. self.obj_name)
    os.execute("rm " .. self.obj_name)
end

function qbuild:run()
    print("qbuild: executing " .. self.obj_name)
    os.execute("./" .. self.obj_name)
end

if(#arg > 0) then
    if(arg[1] == "build") then
        qbuild:build()
    
    elseif(arg[1] == "clean") then
        qbuild:clean()
    
    elseif(arg[1] == "run") then
        qbuild:run()
    
    elseif(arg[1] == "buildrun") then
        qbuild:build()
        qbuild:run()
    end

else
    print("qbuild: usage:\n\tbuild\n\tclean\n\trun\n\tbuildrun")
end


