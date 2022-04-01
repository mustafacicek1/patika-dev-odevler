
function newElement(){
    let inputDOM =document.querySelector("#task")
    let listDOM = document.querySelector("#list")
    let newLi=document.createElement("li")
    let newSpan=document.createElement("span")
    if(inputDOM.value.trim().length>0){ 
        newLi.innerHTML=inputDOM.value
        newSpan.innerHTML="X"
        newSpan.onclick=function(event){
            event.target.parentElement.remove()
            remove(event.target.parentElement)
        }
        newSpan.classList.add("float-right")
        newLi.appendChild(newSpan)
        listDOM.append(newLi)
        save(newLi)
        successToast()
    }else{
        errorToast()
    }
}

let listDOM = document.querySelector("#list")
listDOM.onclick=function(event){
    if(event.target.classList.contains("checked")){
        event.target.classList.remove("checked")
    }else{
        event.target.classList.add("checked")
    }
}

let liList=[]

function save(item){
    liList.push(item.innerText.slice(0,item.innerText.length-1))
    localStorage.setItem("liList",JSON.stringify(liList))
}

function remove(item){
    liList=JSON.parse(localStorage.getItem("liList"))
    let li =liList.indexOf(item.innerHTML)
    liList.splice(li,1)
    localStorage.setItem("liList",JSON.stringify(liList))
}

function fillListDOM(){
    let items=JSON.parse(localStorage.getItem("liList"))
    if(items?.length>0){
        for(let i=0;i<items.length;i++){
            let newLi=document.createElement("li")
            let newSpan=document.createElement("span")
            newLi.innerHTML=items[i]
            newSpan.innerHTML="X"
            newSpan.onclick=function(event){
                event.target.parentElement.remove()
                remove(event.target.parentElement)
            }
            newSpan.classList.add("float-right")
            newLi.appendChild(newSpan)
            listDOM.append(newLi) 
        }
    }
}

fillListDOM()

function successToast(){
    let toast=document.querySelector("#successToast")
    let toastAdd = new bootstrap.Toast(toast);
    toastAdd.show()
}

function errorToast(){
    let toast=document.querySelector("#errorToast")
    let toastAdd = new bootstrap.Toast(toast);
    toastAdd.show()
}