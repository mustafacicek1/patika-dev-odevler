let userName=prompt("Adınızı Giriniz:")
let nameArea=document.querySelector("#myName")

if(userName.length>0){
    nameArea.innerHTML=userName
}else{
    nameArea.innerHTML="Misafir"
}

function showTime() {
    let d = new Date();
    let days = ["Pazar","Pazartesi","Salı","Çarşamba","Perşembe","Cuma","Cumartesi"];
    let time = document.querySelector('#myClock')

time.innerHTML = `${d.getHours()}:${d.getMinutes()}:${d.getSeconds()} ${days[d.getUTCDay()]}`
setTimeout(showTime, 1000); 
}
showTime()