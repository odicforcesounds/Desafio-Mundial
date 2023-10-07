#!/bin/bash
# IF you are using another domain to push your code... 

pkill -x ssh-agent 
sleep 1
echo "ssh-agents killed"
eval $(ssh-agent)
sleep 1 
echo "ssh-agent inicialized"
ssh-add ~/.ssh/osounds
sleep 1
echo "ssh-key-id added"
git add . 
echo "all changes added to commit state"
git commit -m "A Expressão já é ação, sendo que também é matéria."
git push git@github.com:odicforcesounds/Desafio-Mundial
echo "Push completed"
sleep 3
