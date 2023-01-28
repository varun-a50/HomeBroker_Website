<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallery.aspx.cs" Inherits="Project1.Gallery" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section>
        <img src="imgs/banner.jpeg" class="img-fluid" style="width:100%"/>
    </section> 
  
    <div class="text-center ps-5 pt-4">
   <div class="d-flex flex-row flex-nowrap overflow-auto mx-3 ml-5">
         <SeparatorTemplate>
              <table width="30px">
                    <tr>
                        <td>&nbsp;</td>
                     </tr>
              </table>
     </SeparatorTemplate>
   <div class="card" style="width: 30rem;">
  <img class="card-img-top" src="imgs/b1.jpg">
  <div class="card-body">
    <p class="card-text">“Home is where our story begins…”.</p>
  </div>
</div>
      <SeparatorTemplate>
              <table width="60px">
                    <tr>
                        <td>&nbsp;</td>
                     </tr>
              </table>
     </SeparatorTemplate>

     <div class="card" style="width: 40rem;">
  <img class="card-img-top" src="imgs/b2.jpg">
  <div class="card-body">
    <p class="card-text">“Home is the starting place of love, hope and dreams.”</p>
  </div>
</div>
       </div>
    <div>&nbsp</div>
    <div class="d-flex flex-row flex-nowrap overflow-auto mx-3 ml-5">
   <div class="card" style="width: 40rem;">
  <img class="card-img-top"src="imgs/b4.jpg">
  <div class="card-body">
    <p class="card-text">“The magic thing about home is that it feels good to leave, and it feels even better to come back.”</p>
  </div>
</div>
       <SeparatorTemplate>
              <table width="50px">
                    <tr>
                        <td>&nbsp;</td>
                     </tr>
              </table>
     </SeparatorTemplate>

     <div class="card" style="width: 30rem;">
  <img class="card-img-top"src="imgs/b3.jpg">
  <div class="card-body">
    <p class="card-text">“Home is where love resides, memories are created, friends always belong, and laughter never ends.”</p>
  </div>
</div>
       </div>
        </div>
</asp:Content>
