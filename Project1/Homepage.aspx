<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Project1.Homepage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <section>
        <img src="imgs/banner.jpeg" class="img-fluid" style="width:100%"/>
    </section> 
    <div> &nbsp</div>
    <div class="Container m-lg-2">
        <div class="row">
            <div class="col-md-4 text-center  ">
                <h2>About Us</h2>
            </div>
            <br />
        </div>
        <div class="container-fluid">
        <div class="row">
            <div class="col-md-6">
                <img src="imgs/aboutus.jpg" class="img-fluid" height="720" width="540"/>
            </div>
            <div class="col-md-6">
                 <center>
                <img src="imgs/welcome.gif" width="540" class="img-fluid"/>
                     
                
               
               <h5 class="mt-5 text-xl-center fw-bold  ">
                   Elite Homes is where your lifestyle converges with world-class amenities,
                   <br />
                   <br />
                      right at your doorstep. Be it the state-of-the-art 
                   <br />
                   <br />
                   clubhouse, beautiful gardens, sports, and gaming arenas - healthy 
                   <br />
                   <br />
                      and holistic living has a new address at Elite Homes.
               </h5>
                   
                        </center>
            </div>
    </div>
            </div>
    </div>
    <br />
    <br />
    <h4 class="fw-bold m-lg-2 ps-md-5">Different cities in which you may find your Home</h4>
    <br />
    
    <div class="d-flex flex-row flex-nowrap overflow-auto mx-3">
      <div class="card card-block mx-md-2" style="min-width: 300px;"> 
          <div class="card" style="width:300px;" >
                <img src="imgs/home%20in%20pune.jpg" class="card-img-top" alt="Homes in Pune">
                 <div class="card-body">
                      <h5 class="card-title">Homes in Pune</h5>
                         <p class="card-text">Explore the beautiful houses in &nbsp Pune.</p>
                            <a href="Homes in Pune.aspx" class="btn btn-primary">Explore</a>
                </div>
          </div>
      </div>
      <div class="card card-block mx-2" style="min-width: 300px;">
          <div class="card" style="width:300px;" >
                <img src="imgs/home%20in%20mumbai.jpg" class="card-img-top" alt="Homes in Mumbai">
                 <div class="card-body">
                      <h5 class="card-title">Homes in Mumbai</h5>
                          <p class="card-text">Explore the beautiful houses in Mumbai.</p>
                            <a href="Homes in Mumbai.aspx" class="btn btn-primary">Explore</a>
                </div>
          </div>
      </div>
      <div class="card card-block mx-2" style="min-width: 300px;">
          <div class="card" style="width:300px;" >
                <img src="imgs/home%20in%20bangalore.jpg" class="card-img-top" alt="Homes in Bangalore">
                 <div class="card-body">
                      <h5 class="card-title">Homes in Bangalore</h5>
                          <p class="card-text">Explore the beautiful houses in Bangalore.</p>
                            <a href="#" class="btn btn-primary">Explore</a>
                </div>
          </div>
      </div>   
      <div class="card card-block mx-2" style="min-width: 300px;">
          <div class="card" style="width:300px;" >
                <img src="imgs/delhi_city.jpg" class="card-img-top" alt="Homes in Delhi">
                 <div class="card-body">
                      <h5 class="card-title">Homes in Delhi</h5>
                         <p class="card-text">Explore the beautiful houses in &nbsp Delhi.</p>
                            <a href="#" class="btn btn-primary">Explore</a>
                </div>
          </div>
      </div>
        <div class="card card-block mx-2" style="min-width: 300px;">
          <div class="card" style="width:300px;" >
                <img src="imgs/kolkata_city.jpg" class="card-img-top" alt="Homes in Kolkata">
                 <div class="card-body">
                      <h5 class="card-title">Homes in Kolkata</h5>
                          <p class="card-text">Explore the beautiful houses in Kolkata.</p>
                            <a href="#" class="btn btn-primary">Explore</a>
                </div>
          </div>
      </div>
        <div class="card card-block mx-2" style="min-width: 300px;">
          <div class="card" style="width:300px;" >
                <img src="imgs/chennai_city.jpg" class="card-img-top" alt="Homes in Chennai">
                 <div class="card-body">
                      <h5 class="card-title">Homes in Chennai</h5>
                          <p class="card-text">Explore the beautiful houses in Chennai.</p>
                            <a href="#" class="btn btn-primary">Explore</a>
                </div>
          </div>
      </div>
</div>
    <br />
    <br />
    
    <br />
    
         
   
</asp:Content>
