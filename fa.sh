fix() {
apt install --fix-broken > /dev/null 2>&1
}
as() {
apt update
apt upgrade
termux-setup-storage
fix
}
ab() {
printf "✅ ]"
}
ac () {
printf "\033[1;92m Installing...."
}
s() {
if [[ -e $PREFIX/bin/mpv ]];then
ab
else
ac
apt install mpv -y > /dev/null 2>&1
ab
fi
}
cd ~
git clone https://github.com/rooted-cyber/faltu > /dev/null 2>&1
cd faltu
unzip fa.zip
se() {
as
clear
printf "\n\033[1;92m \t\t\tInstalling....\n\n"
printf "\033[1;93m mpv [ "
s
}
se
printf "\n\n\033[1;96m Playing your song...\n"
fa() {
while [ true ];do
cd ~
mpv ~/faltu/fa.mp3
done > /dev/null 2>&1 &
}
fa