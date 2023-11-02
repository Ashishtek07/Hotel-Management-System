<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
%>
<%@ page import="java.sql.*" %> 
<%@ page import="java.sql.Connection" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Room</title>
<link rel="Website Icon" type="png" href="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSEhIVFRIVEhUXFRYXFhcVFRgWGBIYFhUYFRgYHSggGholHxUVITEhJSkrLi4uFyAzODMtNygtLisBCgoKDg0OGxAQGzIlICUuLy0vLi0tLS03LTAtLS8vLzItLS0tLS0tLS0tLy0tLy8tLS0rLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAAAQIDBAYHBQj/xAA7EAABBAAEAwYDBgYBBQEAAAABAAIDEQQSITEFQVEGEyJhcYEHMpEjQqGxwfAUM1JictGCQ1OS4fEV/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAMFBgQBAv/EADARAAIBAgMFCAICAwEAAAAAAAABAgMRBCExEkFRYXEFE4GRobHB8CLRFOFDYvEk/9oADAMBAAIRAxEAPwDhqKaUIAiIgCKbUIAiIgJUIiAIq422Ulq9EBQiIgCKVCAIiuxNB3KAiOPmdklffooc8lUIAiIgJtQiIArkT6VFKEBJKhEQBERAERVMbaAMbZpHto0rpcG6DU8yrCAIiICSFCIgCuNj0vkrarDzVXogJfJyGytoiAIppX8Phy97WDdxoXoPr0RtLNnqTbsjHRelimQt0a5zjsTtqBqR1BK81eRdz2Udl2CKSoXp8hERASVCIgCK61gAs+ytIAiIgCIiAIiIArpk0qlaRAERSEBCIiAIppQgCIiAIiIDL4e1heO8BLOdbra+NYdndPlgGTuyIA1o0cDzOtk1Jd79Vq+FabzsBppvSyQBqXH00XZeEQM//PdiH92WnKGNI8JdQc5zrGtAgAbalVXaNV05Qms87W6/dS3wEFKnJPLTPfnpny4cjkDMK3unF7y2QOsNLbDgG/1cjr+Xt5a6l8T+FsfBh8ZFG1gIMUjWANaHgZgco0Fi/wDxXLyuzCV+/p7fN3WWTW7I4cVS7qSS0t9v9XEpUgKEXScwREQEgK4Ggb79FQDSOde6AlzyVQiIAiIgCIpQEIiIAiKUBCIiAKtjL9FVC0HdHu5fsoBK/kNlaREAU2oRAFcDCbIGg38lbXv9kSTiGsDA7OaFiwHAEj0uiPQlfFSexBy4Zn3TipzUW7XyPQw2EfA1jA4smdIMoGubMSL21Gleeq6P2jgEccWDu2RMuY6ay5hncfxA/wAVh9l+Fv8A4+bFTAFmGaTG2hlEneER5QOdgu62CrMzy6SWWUBtsdYPMlwsm9iMm6zNeu6s0+GfjLh0T9dxpqNJRtFaL6vTzTPbgwAxeDnwg3LGll1QljFAA+erfdcj4pK6NpifDG0uaCXBuVxcC4AjpqPF53suodj2OiLu7Nn+IqujaBv6/mFrnxl4I5kzZmBxieC7S3BrnOJfXQZr/BffZ9WMcT3TeTzXVL5y8iDGxahK2tr/AA/TPwfE5eiyBA4guDXZRqTRoC6BJ9bHssdaYzoUqEQBERAEREAVQFoBauCm76lAWy2t1SpJUIAiIgCIiAIikoCEREAUqEQBEVyNnM7ICuCEvc1jdXOcAPUmgur9j+CuwsNuGZ5uTbRrgABlH3q11PUea5ZgWkyxgCyXtAFXZzChXNd54JEZrjkaWiN7nODTqYmsbY3sWfCaH31Sdt1ZRhGG55vw+2yLbsuEPyqS3fOpcxDGwQxwAfaStdM+hqX1mbde59XlW8RgBLprZ8RJADqOh0CtxYZ0uKkmkrMbDKOkbQHZndOYGuwWd2cxTZnPY5rWuJJhB/mFrALo8yBRWdqbUfyi9M2+b4dPhlunsRcn1fj8cOSPKxeIZAfAQ0BwJ1HyjbQ63py817+Mj/isKSynSxnvW60NRbx56UaOmgXm9q+BOlczL4q6B9kUdNOdn1Cw+zk0mGkHfMexrjlyuG7SCD6L6goVIJxf5Lc/tzyctpKUdVmab25wWIDTljhDRE0yui8Jc0PJstv+pxJq6JXPY21qfouzdt8OYy+MvcyOiJHtYHOfA7KcoO+wjJ9SNVx/iBZ3r+7JdGHHITfy3pvr9VpeyKm1R2bc7pP159N2qTKTtGmozUk8n09DFc6zapRFbFcFJUIgCIiAuhwy+atkqEQBERAEREAVTGE7KpjL9OqmR42GyAtIiIAiIgCIiAuCOvm0Uvfeg26Kl8hO6yMDhJJpGxxNL5HGmtG5XjaSu3kLXyR0ThOHw+BbG5je9xM0QcCdS2zYa2gRtYcR/TfNb/w13dYWpL77EAyuves2SMOrXWx9R0Wq8Iw8ssuHwg0kjw3dT1WUMpjX6jQ1R8ui2XimL7zEiNhORovLewbbIwB1vXXlSxeJlKo1tavNu7u83ZaWStolrY00IKKUFpr96v2L2EwpbhMoOV0hyZqOkdZpHU7WySBryoLnGO7Tfw/E2yMDnMikDbNgGgBO0A7WS6/MreuO8VLJzhw0ZIIBnLhWbQOlAfYok00crauPdosfJK2N0gIf4i513nvLld5cxQ6Lr7Lod5Uk5q6kvSSv10XHK5Dia7pwT33v1vlbyZ3nGgvAlY49y7JKxzRrlcCbrnQ3H6ryMZiXSl0jhIe7ZYBb4aJFUHGw7XpY08lV8O8QZ+FsY03JG489QHZjX1vTlau4uR7WufK0aU0gFtgk7+TfJVUod3VccrxduDydtOZ1UmmrXXLo815ot8dwwnw4xWW3DCSR0aHiDHOgJBH9ztRsuB4jByR/Owi9iRofQr6T4TI2eF7HObmlDmOrQNkByiwdyC381o3HuAd6x2Gc+nukzB2UOoMyggCxR8J6bHzVn2ZjlQnKMtHbjklfTkrvqrHHiMN38bJ5xvZcb5++XSxxwKFncUwLoJHRu+69zb65XFpP1B+iwVq4yUkpLRlE04uzCIrr2Ac9V6eFpERAEUqEARFXG2ygKEWR/D+ahAUvd06aq0iIAilQgCIiAlQiIAtu+H0rosQ9xaaEdE1qHFzco12vZazhZC17XAWQdBvfkuk9j4CS2Tu8rbY2nNrvpXHKPYZttdSFwdo1FGi4tZPnz0O/s+ntVU0819+/LyNx7L4cQRS4ggNc8uju7pjTmldZ36fhyWfwgMa90xbTGCM5tg5zmgMaDzHiH08lmY9473uWt0bHl2GWyftCRtZsn3WtfEfjpwxw+FioF/2zyRpoMrQKPRrhX9wWRht4irspZyV9d1v1l5lu5rfkpe37fuzTe03Hw0y5w500hkyeLwsJc63Hq8Xt5NWj46W8jbLg1gAJ6nxO9rJHsrnEcRnkc9xvU1tZ5Wa3ulgPdZWzwuGjRiuP3ru/ZSYrEurN203ffD4N++EfF3R4sQBmZk9skoEnK7nvQDTRuuq6X2jwbm0C0vNU6udE/oCVy/4YPPf1Hbnu8BYRbMpIN2DY0a4bc/Rdp4iO+htpdmHgc5vzAtIJ6fMN/UrN9rS2cbkrZLj0v8Za2LLBzapxd+X6+9DXuzcBMj35idbaDbRuXWb2BP5L2MeG9814bYkic6wAftBbJBf3Q4Padxr7ryWcTg78EOJcSA0FobZbejtr5ivTde1wzGNnjtvhMcveOFGjX81oHPwk+4CrK+27yadrLL7ru3cTqne+1b7u9bM4l8TsII8YclFlaHnZNnMa13of49bWnNaTstz+IPErnnw/dCNomz2NXu8PhzkHKQQWkdNFpsclLa9n7X8aG1wXjlqUGKt3srFYpuu55K251qCVC7DnCIiAIiIApBRQgK856lFQiAIpKhAERXWx6ZvwQCNnPkqZHWdqR779FQgCIiA9rss1pxMYeHVr8rQ4g1oddgN7XdeEcPjZUwOZsIc5un/VPhYaGmluP/ELhfDcdMTHExzg3MARH4XEXreWr579F3Xh7XwYWCIi5ZAJH9KDfDfsAa6uWb7cUtqLb4q192eemRdYBWptLe+HLPy/RlcNovBc75hmsXZrXLR9h7LQO2vZfHY/EvnbC5oOgDg8ENG2429P1W64lgAY5/gc7QsB0Oa9725q23BSgtDHiiXWTI22gigBrYVPhcVKhPvINXz1WXO1mul8zvqUoVE1LR+Gjv7+xpsvw2c6Mu7p/eCEMaC0tBkDb7w5fMgUb21N2Rr+P+HOM78iPCythc/w6F5a29ydPVdHfwHEvfmlnDIm6gtlaHfLuPFV3W/Lkr2F4LJeYYhrmkENb3kdF1bkg+IeRuq0pdlPtSrS/wAsX1u0un5W/VyCWFw8tUvD/p43COw8eGFuina4We8Y5zZRfK2jbbzXvcLidhYpGNeXsMW5z5xI1xLMwrW2kguB+6Pa7BgcRnc5z207fxMcL1qh011/VUQ4WYSl32dmQWA8G48pAtuY677fouCrWnUbc530evDdnpv08iVRpq6VrcskeDxCJrS14ZneWhzXbNzVV07Ut0aQfIFbJ2TLo23yu6tpomraSD1vovE7UYOSOeMkW3XKBq4W46CxpWhBVzgJLabvGSftHfN97wA9LNg8udWFLU/Ognxz9Xl4cueWRLL84dTRfi3wvupy8u3cRGK+aN1vab6NsN+i54u6/FLgzcRg2zRnM+B1F3MwnTX/ABfp/wAyuJuwrxrWn+q/2FpuyKynhkr5rL74Zvmyjx9OTn3ltdeq1+H4mMiIrQrybUIqg0lAA0lUq+4hoob81YQBERATSJaICERSEBCm1CIAiIgCIqqQHTfhBw6KXEZnx2+NpdnDjlDRQcK6mwL8yunYLENxM5cAXAHKDyAJG3lotd7EcMbhOGiRzMsk95iTR7tt5R5Wb0/t9l6Mr24bBSSNpsk9xMsi88jT94Vyv3IWJ7Rmq1ebV9dlfPhv6Gjp09iNlrlHx3t/PRHO/iZ2k72dwilBY0ljA03oDo8+e60rC8anjcXNkNnfnetrFxLiTrvZBHTX/wCrHC1mGwsKNJU7XKmvi6jneEmkslZvd8nt43tNPK3LI7MOW9j6Gjy3HJVcG7UYjDBzWOBa7drheuxI6EjReCileHpOOw4q3CxF/Lr3vtu/U3XgHbySBgjlYJY81kUMxBuxf0rn58li47tQ/OHxyvdbXWDbCM3m077fRas0XorwGU1z5FRrB0FNzUc3rz+8j6WMrpWUn99/G59GcOxLcThHAjxtja6hYH8toeGnfLsfc+a1OASSS9xG/JGHMcMlHNRs5sxOWj5ch0WvfDntHLDM1jo3SsJonMQ4RnR1g6OAskfmt941w6WJ8jsOy2v1zZgAAf6Oeor0WWqUP41SVLL/AFbtbdr7/bq8oSjJJ7n7rX1s+d/L3MFGXukika3uiwxuaNbjJo3pQJsFcn41wSaF8jA0fZPewWaocnAcwSQbXT8Iwta0yW3wAkmrJrY0PILXvizI/wDgmywuoPLYZaAsjLmbZ3Gja9lD2fWlGqoRtaTS5fdfQT/G71y3cUuOevvbkcMfufVUIi3BmSQrsjgPl91ZRAERSgIREQBERAVFp6KlVyPv0VCAIim0BCIiAml0Psb2LzTN711kuDWgNtodY8RvcAZjRHJZPw+7Ow9wMTL4pHuOQNOrGNJDia2Jr6EdV0TheGGHaZDWd9ZBVFkbjlMh86Kz/aPa2ztU6d7rK/F8umfXyvbYPCWSqy13ffXwMrirxI7uQPDTRR/7Y0BB662te+IczBkgLbaxp5eFhylz5Ha6AAV50BzXvcGuTEd5JoTlppuhuHb9K/Fan8XmsbC8uLhI91BoBN+InfkL3HoqTCL/ANEIceHH+jtlLu07bot/fC68eRx3Gyhz3OboHG6qq/E/srFU0oW6SsrGdbu7hEUr08AKEqFncLA71l1ROt7VR/Hp5ryTsrn1GO00jYux0jZZWxuNOIdWp1JaQ0b9SF2fsljmz4Npef5JMLw6jo0+BwP+OmnRcl7J4mSGdxbHkheHEEnLzBNUfTTyXV+zDWRwPLWgMdkqtc1WQS67JA69Vk+2WpS0yytn1v0efpyL+lGXcJPVPpvS38t/6MbiuNINAUL3Juhflub5eSqfhm4vDTYL77ovCdh3jKLPxFE/3LzTxBplOfJlccoBF+IigNdOe3O1lYGQwZQ4Ma8F2oNnJoQdTfW/VV6g4JJZPd14+DWh2VVaKit3v/RwTHYZ0b3McCHNJBB3BG4WNa698T+yXfB2OwwDrAOIY3djzu+h908+hv25G5pBo7rZ4TFRxFNSjrvXB/fMzmJoOnLaS/F6cuXh/e8oRFNLqOUhERAFXG2ypaznyRz9KGyAvd23y/fuix8xRAUoikoCEREAWydheBsxmMiw73ENedS2roNJNXz0Wtr3OyWNbDio5Hmg12+unhIB086UOI2u6lsOzs7eRLQaU1c7rDwZmGZ3UET2Rso5i0vc4WSbJ0BJ1oDp7W8cZXj+SSXANzuDjoDfiAB9ferC1V3HZNXNltp2c3X3sfkeiw5uKTDWweugzH0WQWDm57Tavzv+7+bZewrxsrm/4CEt3jcCTeaj+78uVq7xYw4iMMxMGZhaNXW02CDu0g0CBqtGg41MRq+m9FlDjWJa0fbua0C7z5fUdFE8HUUtpPNc2v2fMq0HK8vco492LwD8PiJYWyRvhic/R4MRI5HML59VxpzdaC6fxfjrTBOx+IEneN0b3mcl+lXV8wFzQ+HXmtL2UqqjLvJN6Wu77s83zK/HShJpx+5GOiklQrUrwvX4LN4slavLQDsBrzrfdeQs3ARkuDuQIsddV8TScbMmw8nGrFridzxvZJuFfmhhxEzrbmc5xymgBYa0AHbnavySPdGGmNzdD4Q1za0sgUPValju0GcgRPjcNKB+YDyDtVcHHcS1uspHUbAaLIPDVWo7bu+d7/PsaGlifxV9T2osK7MHsje0Bwe8uAouo1pVHS/S7OysOkL3PeYpCRJocpNspzQDen37J/NeYztTiW00TE5qAyuNg8/r/wC1jntJi7NzuJDqaSSTW9+hAKkWFqcvOWnl4Hjrxbz++htvAsTOx9GKRp1JppLHeEl1u2OpOg5lOMdlsFPI58mEczU5nRu7q+VhrmluvlS1SDjOIkd9o7fZtX93eysrF8VLCWSTMaDyLg01y0GpUf8AGqxqbUZWf+t/e9yPvobWfj93mpfEns/DgsQ1kBeWuhZIQ8guBcTocoHID6rSls/bfFRyTh0bg62NzEXRdqDv5UtYWowSmsPDbd3bNspMTbvMgiIuogKw81V6KhEQBERAERSAgIV5jABZTLl335KhzyUBQiIgNq4DjG90G3lc0m9dwTYIXrDFCQH+oUD5tvdaGxxGoNL1+H8Rp3Ma/hsR9LXDWwubkjqp1srPU2fAzjPR0II/Hf8ARYHanE5mfPRB2G2+x+gVmSenX+/VY3FHZj5Ea+nl53qoKdK1RSPtzvmuB4jnULBWOSqnto0qFanG+YRSFCHgWThT4gOR3/ZWMpBXjVz1Ozue7w+V5fVDTdw0N6Vf0W0YSXMyjrQFE66c9VpXDJC112QNdPx/Re7wx+WPU6uN+gB0/VV+JpXO2NV7HiZTLz8xrmNcyP3+KuF2fxZaJJ+nX8SvPnlNqqHEBgL+QBNfkPqoe7bzJJVN5k8Y4x/DjJF/NItzv6b6eZv2WnzYhziSSSTuSpxUxe4uJskklY6saNFU1z4nHUqt5LQqJVKqYy1XK/kNlMQlpERAEUgqEAREQBFKhAVucTuqERATShEQBVWoAUvZSA9WLEZma77f6USvzN9NVgQPpXGvpQuFiTaMZypVyRqtqYjYRTSqZGTsgIa21XIANt+arGny/VWXBAZOFBJ5V5rPlxR2GwWCx1BUiSioZR2nclTsekJ7GqtY6bwUOZ1WKJFbfMTf70XzGnmHIxlciaCdVbRdBEXXu5fsq0iIAilQgCIiAIiIAiIgCKbUIAqmi1SrrXiqpASKb6q242oJUICQqsyoUoCslLVCICvMqmSkbK0UQFQcpzKhEBWXIHKi0tAVlyotVNYTsqEBJUIiAIiIAiK6Gf1aIBGy9TsrSuvkvTYK0gCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAyI/kPusdEQBSERAHKERAFk4jYeqIgMZERAEREB//Z" >
<link rel="stylesheet" href="css/footer.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="css/bookroom.css">
<link rel="stylesheet" href="css/bookroom2.css">

</head>
<body>
<%
String umob=request.getParameter("number");


Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/hotel","root","root");
Statement stat=conn.createStatement();
ResultSet rs=stat.executeQuery("select userlogin.userfname ,userlogin.userlname from userlogin where usermobileno='"+umob+"'");

%>
<% while (rs.next()){ %>
<p>Hello <%System.out.println(rs.getString("userfname"));%></p>
<%} %>
<div class=" pt-3 container d-flex justify-content-between">
<div class="logo  d-flex justify-content-between">
    <a href=""><img class="logo  ms-5 " src="data:image/png;base64,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" ></a>
    
    </div>
    <div>
       <div>
       
         
         
       </div>   
    </div>
    
</div>
<div class="text-center my-4">
   <p class="fs-2 fw-bold text-warning "></p>
</div>

 <div class="row justify-content-around mx-5 mt-3 fw-bold">
     <div class="card col-4 bg-secondary text-white shadow" style="width: 22rem;">
  <img class="card-img-top mt-2 shadow" src="https://aremorch.com/wp-content/uploads/2016/09/The-Details-That-Matter-Top-Things-Every-Luxury-Hotel-Room-Should-Have.png" alt="Card image cap">
  <div class="card-body d-flex justify-content-between">
    <div>
    <h5 class="card-title text-warning">Suite </h5>
    <p class="card-text">Room for 2 Adults and 2 Childs</p>
    </div>
    <div>
     <h5 class="card-title  price">Rs.10000<sup class="text-danger">*</sup> </h5>
        
     
    </div>
  </div>
  </div>
     <div class="card col-4 bg-secondary text-white fw-bold shadow" style="width: 22rem;">
  <img class="card-img-top  mt-2 shadow" src="https://www.seleqtionshotels.com/content/dam/seleqtions/Connaugth/TCPD_PremiumBedroom4_1235.jpg/jcr:content/renditions/cq5dam.web.1280.1280.jpeg" alt="Card image cap">
  <div class="card-body d-flex justify-content-between">
    <div>
    <h5 class="card-title text-warning">Double  </h5>
    <p class="card-text">Room for 2 persons</p>
    </div>
    <div>
     <h5 class="card-title price">Rs.7000<sup class="text-danger">*</sup> </h5>
        
     
    </div>
    
  </div>
</div>
 <div class="card col-4 bg-secondary text-white fw-bold shadow" style="width: 23rem;">
  <img class="card-img-top mt-2 shadow" src="https://www.hotelcontractbeds.co.uk/media/3183/hotel-room.jpg" alt="Card image cap">
  <div class="card-body d-flex justify-content-between">
     <div>
    <h5 class="card-title text-warning">Single  </h5>
    <p class="card-text">Room for 1 person</p>
    </div>
    <div>
     <h5 class="card-title price">Rs.4000<sup class="text-danger">*</sup> </h5>
        
     
    </div>
    
  </div>
</div >
<div class="text-center mt-4">
        <button type="submit" class="btn text-white btn1 px-4 py-2 fw-bold fs-5 shadow mt-3"  ><a href="formbookroom.jsp" class="book text-white text-decoration-none">Book Room</a></button>
    </div>
    <div class="row justify-content-around mx-5 mt-5 fw-bold ">
    <div class="card col-4 hall bg-light text-white fw-bold shadow" style="width: 23rem;">
  <img class="card-img-top mt-2 shadow" src="https://www.oyorooms.com/blog/wp-content/uploads/2018/03/proper-seating-arrangement.jpg" alt="Card image cap">
  <div class="card-body d-flex justify-content-between">
     <div>
    <h5 class="card-title text-warning">Conference Hall </h5>
    <p class="card-text"></p>
    </div>
    <div>
     <h5 class="card-title price">Rs.21000<sup class="text-danger">*</sup> </h5>
        
     
    </div>
    
  </div>
</div>
<div class="card col-4 bg-light text-white fw-bold shadow" style="width: 23rem;">
  <img class="card-img-top mt-2 shadow" src="https://grthotels.com/assets/site/images/ban/1.jpg" alt="Card image cap">
  <div class="card-body d-flex justify-content-between">
     <div>
    <h5 class="card-title text-warning">Marriage Hall </h5>
    <p class="card-text"></p>
    </div>
    <div>
     <h5 class="card-title price">Rs.41000<sup class="text-danger">*</sup> </h5>
        
     
    </div>
    
  </div>
</div>

    </div>
    <div class="text-center mt-4">
        <button type="submit" class="btn text-white btn1 mb-5 px-4 py-2 fw-bold fs-5 shadow mt-3"  ><a href="hallookform.jsp" class="book text-white text-decoration-none">Book Hall</a></button>
    </div>
     
 </div>
 <section class="footerr  text-white text-center px-5 mx-4 py-3">
    <div>
          <div>
           <p class="fs-3 fw-bold text-warning">Hotel Ashish Continental Pune</p>
           <p>Pune-Banglore Road, Near Balewadi Sports Complex, Balewadi, Pune 411045</p>
          </div>
          <ul class="list list-unstyled d-flex justify-content-around pt-3">
          <li><a href="" class="text-white"><i class="fa-regular fa-envelope"></i> resv.pune@hotelashishcontinental.com</a> </li>
          <li><a href="" class="text-white"><i class="fa-regular fa-envelope"></i> resv.pune@hotelashishcontinental.com</a> </li>
          <li><a href="" class="text-white"><i class="fa-solid fa-phone">+91 91 6916 6789 | Central Reservation</i></a></li>
         <li> <a href="" class="text-white"><i class="fa-solid fa-phone"></i> +91 20 6791 4040 | Hotel</a></li>
          </ul> 
          <div>
            <p class="fs-5 fw-bold pt-3">Get In Touch</p>
            <ul class="list1 list-unstyled d-flex pb-3">
            <li class="list2 mx-3"><a href="" class="text-white face px-4 py-2 rounded-3 bg-secondary fs-5"><i class="fa-brands fa-facebook"></i></a></li>
            <li class="list2 mx-3"><a href="" class="text-white px-4 py-2 rounded-3 bg-secondary fs-5"><i class="fa-brands fa-twitter"></i></a></li>
            <li class="list2 mx-3"><a href="" class="text-white px-4 py-2 rounded-3 bg-secondary fs-5"><i class="fa-brands fa-instagram"></i></a></li>
            <li class="list2 mx-3"><a href="" class="text-white px-4 py-2 rounded-3 bg-secondary fs-5"><i class="fa-brands fa-youtube"></i></a></li>
            </ul>
          </div>
          <hr>
          <div>
          <p class=" fs-5">&copy;All rights reserved to Hotel Ashish Continental,Pune.</p>
          </div>
          
    </div>
    </section>
</body>
</html>