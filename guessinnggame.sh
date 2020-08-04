function guess(){
    true_ans=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "enter your guess"
        read  number
        if [ $number -lt $true_ans ]
        then
            echo "your guess is Less than the true number"
        elif [ $number -gt $true_ans ]
        then
            echo "Your guess is Greater than the true number"
        else
            echo " You are right!"
        break;
        fi
    done
}
echo "guess the number of files in the current directory?!"
guess
