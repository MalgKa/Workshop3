const oneUserModalBg = document.querySelector('#oneUserModalBg');
const oneUserModal = document.querySelector('#oneUserModal');
const confirmBtn = document.querySelector('#confirm')
const denyBtn = document.querySelector('#deny')

function agreement(id){
    oneUserModal.classList.add('is-active');
    oneUserModalBg.addEventListener('click', ()=>{
        oneUserModal.classList.remove('is-active')
    })
    denyBtn.addEventListener('click', ()=>{
        oneUserModal.classList.remove('is-active')
    })
    confirmBtn.addEventListener('click', ()=> {
        window.location.replace("/user/delete?id=" + id)
    })
}