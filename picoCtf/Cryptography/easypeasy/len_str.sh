#! /bin/bash
function randStr
{
    for ((i=0;i<5000;i++)); do
        strs="${strs}0"
    done;
    echo $strs
}
echo `randStr`
