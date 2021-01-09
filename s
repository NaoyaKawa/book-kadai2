
[1mFrom:[0m /home/ec2-user/environment/bookers2-debug-master/app/models/user.rb:42 User.search:

    [1;34m33[0m: [32mdef[0m [1;36mself[0m.[1;34msearch[0m(search, word)
    [1;34m34[0m:   [32mif[0m search == [31m[1;31m"[0m[31mforward_match[1;31m"[0m[31m[0m
    [1;34m35[0m:   　@user = [1;34;4mUser[0m.where([31m[1;31m"[0m[31mname LIKE?[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31m#{word}[0m[31m%[1;31m"[0m[31m[0m)
    [1;34m36[0m:   [32melsif[0m search == [31m[1;31m"[0m[31mbackward_match[1;31m"[0m[31m[0m
    [1;34m37[0m:   　@user = [1;34;4mUser[0m.where([31m[1;31m"[0m[31mname LIKE?[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31m%#{word}[0m[31m[1;31m"[0m[31m[0m)
    [1;34m38[0m:   [32melsif[0m search == [31m[1;31m"[0m[31mperfect_match[1;31m"[0m[31m[0m
    [1;34m39[0m:   　@user = [1;34;4mUser[0m.where([31m[1;31m"[0m[31m#{word}[0m[31m[1;31m"[0m[31m[0m)
    [1;34m40[0m:   [32melsif[0m search == [31m[1;31m"[0m[31mpartial_match[1;31m"[0m[31m[0m
    [1;34m41[0m:      binding.pry
 => [1;34m42[0m:   　@user = [1;34;4mUser[0m.where([31m[1;31m"[0m[31mname LIKE?[1;31m"[0m[31m[0m, [31m[1;31m"[0m[31m%#{word}[0m[31m%[1;31m"[0m[31m[0m)
    [1;34m43[0m:   [32melse[0m
    [1;34m44[0m:   　@user = [1;34;4mUser[0m.all
    [1;34m45[0m:   [32mend[0m
    [1;34m46[0m: [32mend[0m

