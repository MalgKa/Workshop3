const removeAllBtn = document.querySelector('#removeAll');
const modalBg = document.querySelector('.modal-background');
const modal = document.querySelector('.modal');
const dangerBtn = document.querySelector('#isDanger')
const rejectionBtn = document.querySelector('#rejection')

removeAllBtn.addEventListener('click', ()=>{
    modal.classList.add('is-active');
})
modalBg.addEventListener('click', ()=>{
    modal.classList.remove('is-active')
})
dangerBtn.addEventListener('click', ()=>{
    window.location.replace ("/user/deleteAll")
})
rejectionBtn.addEventListener('click', ()=>{
    modal.classList.remove('is-active')
})