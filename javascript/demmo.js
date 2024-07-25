const apikey="05b6fc137eed4b459992565da718c2af"

const blogContainer= document.getElementById("blog-container");
 function fetchRandonInfo() {
    try{
     const apiUrl =`https://newsapi.org/v2/top-headlines?country=us&pageSize=10&apikey=$apikey`
     const response= await fetch(apiUrl)

    }
    catch(error){
       console.error ("Error fetching random Information", error)
       return[]
    }
 }