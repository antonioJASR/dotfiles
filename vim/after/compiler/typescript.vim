let currect_compiler = "typescript"
CompilerSet makeprg=tsc\ $*\ --outDir\ build\ % 
CompilerSet errorformat=%+A\ %#%f\ %#(%l\\\,%c):\ %m,%C%m
