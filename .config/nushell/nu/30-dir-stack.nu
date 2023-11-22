export-env {
    $env.dirs = {default: []}

    $env.config = ($env.config | update hooks.env_change.PWD {|curr| $curr.hooks.env_change.PWD ++ [
        {|before, after| $env.dirs.default = ([$after] ++ $env.dirs.default )}
    ]})
}

export def-env dirs [
    stack: string = "default"
    --clear (-c) # Clear the directory stack
] {
    if $clear {
        let new_dirs = $env.dirs | update $stack [ $env.PWD ]
        $env.dirs = $new_dirs
    } else {
        let stk = $env.dirs | get $stack 
        $stk | enumerate | reverse
    }
}

export def-env popd [
    number: int = 1 # Entry to go to, see the indices in `dirs`
    --stack (-s): string = "default"
] {
    let dest = ($env.dirs | get $stack | get $number)
    # Drop also the target directory, it gets re-added, though only if we
    # actually change directory hence the 0 special case
    let num = if $number == 0 {
        0
    } else if $stack == "default" {
        $number + 1
    } else {
       $number 
    }
    let new_stack = ($env.dirs | get $stack | skip $num)
    let new_dirs = $env.dirs | update $stack $new_stack
    $env.dirs = $new_dirs
    cd $dest
}

export def-env pushd [
    path: string
    stack: string = "default"
] {
    if not ($path | path exists) { 
        print "path doesn't exists" 
        return 
    }
    let type = ($path | path type)

    let dir = if $type == "dir" { 
        $path 
    } else { #path is either a file or a symlink
        $path | path parse | get parent 
    }
    let curr_stack = ($env.dirs | get --ignore-errors $stack | default [ $env.PWD ])
    let new_stack = [ ($dir | path expand) ] ++ $curr_stack 
    let new_dirs = ($env.dirs | upsert $stack $new_stack)
    #print $new_dirs
    $env.dirs = $new_dirs
    cd $dir 
}

