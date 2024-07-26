// const apikey="05b6fc137eed4b459992565da718c2af"

// const blogContainer= document.getElementById("blog-container");
//  function fetchRandonInfo() {
//     try{
//      const apiUrl =`https://newsapi.org/v2/top-headlines?country=us&pageSize=10&apikey=$apikey`
//      const response= await.fetch(apiUrl)

//     }
//     catch(error){
//        console.error ("Error fetching random Information", error)
//        return[]
//     }
//  }

// document.addEventListener('DOMContentLoaded', () =>{
//    const demo = document.getElementById('post');
//    const url= 'https://jsonplaceholder.typicode.com/posts';

//    fetch(url)
//    .then(respose => respose.json())
//    .then (data=>{
//       data.slice(1,10).forEach(item=>{
//          const dataItem = document.createElement('div');
//          dataItem.classList.add('data-item');
//          dataItem.innerHTML = `
//          <h3>${item.title}</h3>
//          <p>${item.body}</p>
//          `;
         
//          demo.appendChild(dataItem);

//       });

//    })
//    .catch(error => {
//      console.error('error fetching',error);
//    demo.innerHTML ='try again'
//    })
      
// })
import { request }  from "./request.js";

const url = "https://jsonplaceholder.typicode.com/posts";
request (url , "GET")
.then ((data) => {
   let rows = "";
   data.forEach((post) =>{
      rows += 
      `<div class = "card">
            <h2 class= "title">${
               post.blogTitle}</h2>
            <p>${post.blogDescription}</p></div>`;
   });
   document.getElementById("post").innerHTML = rows;
})
.catch((error) => {
   console.error("Error:",error);
});