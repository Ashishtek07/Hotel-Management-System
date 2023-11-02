<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Bookings</title>
<link rel="Website Icon" type="png" href="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUSEhIVFRIVEhUXFRYXFhcVFRgWGBIYFhUYFRgYHSggGholHxUVITEhJSkrLi4uFyAzODMtNygtLisBCgoKDg0OGxAQGzIlICUuLy0vLi0tLS03LTAtLS8vLzItLS0tLS0tLS0tLy0tLy8tLS0rLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAcAAEAAQUBAQAAAAAAAAAAAAAAAQIDBAYHBQj/xAA7EAABBAAEAwYDBgYBBQEAAAABAAIDEQQSITEFQVEGEyJhcYEHMpEjQqGxwfAUM1JictGCQ1OS4fEV/8QAGgEBAAMBAQEAAAAAAAAAAAAAAAMFBgQBAv/EADARAAIBAgMFCAICAwEAAAAAAAABAgMRBCExEkFRYXEFE4GRobHB8CLRFOFDYvEk/9oADAMBAAIRAxEAPwDhqKaUIAiIgCKbUIAiIgJUIiAIq422Ulq9EBQiIgCKVCAIiuxNB3KAiOPmdklffooc8lUIAiIgJtQiIArkT6VFKEBJKhEQBERAERVMbaAMbZpHto0rpcG6DU8yrCAIiICSFCIgCuNj0vkrarDzVXogJfJyGytoiAIppX8Phy97WDdxoXoPr0RtLNnqTbsjHRelimQt0a5zjsTtqBqR1BK81eRdz2Udl2CKSoXp8hERASVCIgCK61gAs+ytIAiIgCIiAIiIArpk0qlaRAERSEBCIiAIppQgCIiAIiIDL4e1heO8BLOdbra+NYdndPlgGTuyIA1o0cDzOtk1Jd79Vq+FabzsBppvSyQBqXH00XZeEQM//PdiH92WnKGNI8JdQc5zrGtAgAbalVXaNV05Qms87W6/dS3wEFKnJPLTPfnpny4cjkDMK3unF7y2QOsNLbDgG/1cjr+Xt5a6l8T+FsfBh8ZFG1gIMUjWANaHgZgco0Fi/wDxXLyuzCV+/p7fN3WWTW7I4cVS7qSS0t9v9XEpUgKEXScwREQEgK4Ggb79FQDSOde6AlzyVQiIAiIgCIpQEIiIAiKUBCIiAKtjL9FVC0HdHu5fsoBK/kNlaREAU2oRAFcDCbIGg38lbXv9kSTiGsDA7OaFiwHAEj0uiPQlfFSexBy4Zn3TipzUW7XyPQw2EfA1jA4smdIMoGubMSL21Gleeq6P2jgEccWDu2RMuY6ay5hncfxA/wAVh9l+Fv8A4+bFTAFmGaTG2hlEneER5QOdgu62CrMzy6SWWUBtsdYPMlwsm9iMm6zNeu6s0+GfjLh0T9dxpqNJRtFaL6vTzTPbgwAxeDnwg3LGll1QljFAA+erfdcj4pK6NpifDG0uaCXBuVxcC4AjpqPF53suodj2OiLu7Nn+IqujaBv6/mFrnxl4I5kzZmBxieC7S3BrnOJfXQZr/BffZ9WMcT3TeTzXVL5y8iDGxahK2tr/AA/TPwfE5eiyBA4guDXZRqTRoC6BJ9bHssdaYzoUqEQBERAEREAVQFoBauCm76lAWy2t1SpJUIAiIgCIiAIikoCEREAUqEQBEVyNnM7ICuCEvc1jdXOcAPUmgur9j+CuwsNuGZ5uTbRrgABlH3q11PUea5ZgWkyxgCyXtAFXZzChXNd54JEZrjkaWiN7nODTqYmsbY3sWfCaH31Sdt1ZRhGG55vw+2yLbsuEPyqS3fOpcxDGwQxwAfaStdM+hqX1mbde59XlW8RgBLprZ8RJADqOh0CtxYZ0uKkmkrMbDKOkbQHZndOYGuwWd2cxTZnPY5rWuJJhB/mFrALo8yBRWdqbUfyi9M2+b4dPhlunsRcn1fj8cOSPKxeIZAfAQ0BwJ1HyjbQ63py817+Mj/isKSynSxnvW60NRbx56UaOmgXm9q+BOlczL4q6B9kUdNOdn1Cw+zk0mGkHfMexrjlyuG7SCD6L6goVIJxf5Lc/tzyctpKUdVmab25wWIDTljhDRE0yui8Jc0PJstv+pxJq6JXPY21qfouzdt8OYy+MvcyOiJHtYHOfA7KcoO+wjJ9SNVx/iBZ3r+7JdGHHITfy3pvr9VpeyKm1R2bc7pP159N2qTKTtGmozUk8n09DFc6zapRFbFcFJUIgCIiAuhwy+atkqEQBERAEREAVTGE7KpjL9OqmR42GyAtIiIAiIgCIiAuCOvm0Uvfeg26Kl8hO6yMDhJJpGxxNL5HGmtG5XjaSu3kLXyR0ThOHw+BbG5je9xM0QcCdS2zYa2gRtYcR/TfNb/w13dYWpL77EAyuves2SMOrXWx9R0Wq8Iw8ssuHwg0kjw3dT1WUMpjX6jQ1R8ui2XimL7zEiNhORovLewbbIwB1vXXlSxeJlKo1tavNu7u83ZaWStolrY00IKKUFpr96v2L2EwpbhMoOV0hyZqOkdZpHU7WySBryoLnGO7Tfw/E2yMDnMikDbNgGgBO0A7WS6/MreuO8VLJzhw0ZIIBnLhWbQOlAfYok00crauPdosfJK2N0gIf4i513nvLld5cxQ6Lr7Lod5Uk5q6kvSSv10XHK5Dia7pwT33v1vlbyZ3nGgvAlY49y7JKxzRrlcCbrnQ3H6ryMZiXSl0jhIe7ZYBb4aJFUHGw7XpY08lV8O8QZ+FsY03JG489QHZjX1vTlau4uR7WufK0aU0gFtgk7+TfJVUod3VccrxduDydtOZ1UmmrXXLo815ot8dwwnw4xWW3DCSR0aHiDHOgJBH9ztRsuB4jByR/Owi9iRofQr6T4TI2eF7HObmlDmOrQNkByiwdyC381o3HuAd6x2Gc+nukzB2UOoMyggCxR8J6bHzVn2ZjlQnKMtHbjklfTkrvqrHHiMN38bJ5xvZcb5++XSxxwKFncUwLoJHRu+69zb65XFpP1B+iwVq4yUkpLRlE04uzCIrr2Ac9V6eFpERAEUqEARFXG2ygKEWR/D+ahAUvd06aq0iIAilQgCIiAlQiIAtu+H0rosQ9xaaEdE1qHFzco12vZazhZC17XAWQdBvfkuk9j4CS2Tu8rbY2nNrvpXHKPYZttdSFwdo1FGi4tZPnz0O/s+ntVU0819+/LyNx7L4cQRS4ggNc8uju7pjTmldZ36fhyWfwgMa90xbTGCM5tg5zmgMaDzHiH08lmY9473uWt0bHl2GWyftCRtZsn3WtfEfjpwxw+FioF/2zyRpoMrQKPRrhX9wWRht4irspZyV9d1v1l5lu5rfkpe37fuzTe03Hw0y5w500hkyeLwsJc63Hq8Xt5NWj46W8jbLg1gAJ6nxO9rJHsrnEcRnkc9xvU1tZ5Wa3ulgPdZWzwuGjRiuP3ru/ZSYrEurN203ffD4N++EfF3R4sQBmZk9skoEnK7nvQDTRuuq6X2jwbm0C0vNU6udE/oCVy/4YPPf1Hbnu8BYRbMpIN2DY0a4bc/Rdp4iO+htpdmHgc5vzAtIJ6fMN/UrN9rS2cbkrZLj0v8Za2LLBzapxd+X6+9DXuzcBMj35idbaDbRuXWb2BP5L2MeG9814bYkic6wAftBbJBf3Q4Padxr7ryWcTg78EOJcSA0FobZbejtr5ivTde1wzGNnjtvhMcveOFGjX81oHPwk+4CrK+27yadrLL7ru3cTqne+1b7u9bM4l8TsII8YclFlaHnZNnMa13of49bWnNaTstz+IPErnnw/dCNomz2NXu8PhzkHKQQWkdNFpsclLa9n7X8aG1wXjlqUGKt3srFYpuu55K251qCVC7DnCIiAIiIApBRQgK856lFQiAIpKhAERXWx6ZvwQCNnPkqZHWdqR779FQgCIiA9rss1pxMYeHVr8rQ4g1oddgN7XdeEcPjZUwOZsIc5un/VPhYaGmluP/ELhfDcdMTHExzg3MARH4XEXreWr579F3Xh7XwYWCIi5ZAJH9KDfDfsAa6uWb7cUtqLb4q192eemRdYBWptLe+HLPy/RlcNovBc75hmsXZrXLR9h7LQO2vZfHY/EvnbC5oOgDg8ENG2429P1W64lgAY5/gc7QsB0Oa9725q23BSgtDHiiXWTI22gigBrYVPhcVKhPvINXz1WXO1mul8zvqUoVE1LR+Gjv7+xpsvw2c6Mu7p/eCEMaC0tBkDb7w5fMgUb21N2Rr+P+HOM78iPCythc/w6F5a29ydPVdHfwHEvfmlnDIm6gtlaHfLuPFV3W/Lkr2F4LJeYYhrmkENb3kdF1bkg+IeRuq0pdlPtSrS/wAsX1u0un5W/VyCWFw8tUvD/p43COw8eGFuina4We8Y5zZRfK2jbbzXvcLidhYpGNeXsMW5z5xI1xLMwrW2kguB+6Pa7BgcRnc5z207fxMcL1qh011/VUQ4WYSl32dmQWA8G48pAtuY677fouCrWnUbc530evDdnpv08iVRpq6VrcskeDxCJrS14ZneWhzXbNzVV07Ut0aQfIFbJ2TLo23yu6tpomraSD1vovE7UYOSOeMkW3XKBq4W46CxpWhBVzgJLabvGSftHfN97wA9LNg8udWFLU/Ognxz9Xl4cueWRLL84dTRfi3wvupy8u3cRGK+aN1vab6NsN+i54u6/FLgzcRg2zRnM+B1F3MwnTX/ABfp/wAyuJuwrxrWn+q/2FpuyKynhkr5rL74Zvmyjx9OTn3ltdeq1+H4mMiIrQrybUIqg0lAA0lUq+4hoob81YQBERATSJaICERSEBCm1CIAiIgCIqqQHTfhBw6KXEZnx2+NpdnDjlDRQcK6mwL8yunYLENxM5cAXAHKDyAJG3lotd7EcMbhOGiRzMsk95iTR7tt5R5Wb0/t9l6Mr24bBSSNpsk9xMsi88jT94Vyv3IWJ7Rmq1ebV9dlfPhv6Gjp09iNlrlHx3t/PRHO/iZ2k72dwilBY0ljA03oDo8+e60rC8anjcXNkNnfnetrFxLiTrvZBHTX/wCrHC1mGwsKNJU7XKmvi6jneEmkslZvd8nt43tNPK3LI7MOW9j6Gjy3HJVcG7UYjDBzWOBa7drheuxI6EjReCileHpOOw4q3CxF/Lr3vtu/U3XgHbySBgjlYJY81kUMxBuxf0rn58li47tQ/OHxyvdbXWDbCM3m077fRas0XorwGU1z5FRrB0FNzUc3rz+8j6WMrpWUn99/G59GcOxLcThHAjxtja6hYH8toeGnfLsfc+a1OASSS9xG/JGHMcMlHNRs5sxOWj5ch0WvfDntHLDM1jo3SsJonMQ4RnR1g6OAskfmt941w6WJ8jsOy2v1zZgAAf6Oeor0WWqUP41SVLL/AFbtbdr7/bq8oSjJJ7n7rX1s+d/L3MFGXukika3uiwxuaNbjJo3pQJsFcn41wSaF8jA0fZPewWaocnAcwSQbXT8Iwta0yW3wAkmrJrY0PILXvizI/wDgmywuoPLYZaAsjLmbZ3Gja9lD2fWlGqoRtaTS5fdfQT/G71y3cUuOevvbkcMfufVUIi3BmSQrsjgPl91ZRAERSgIREQBERAVFp6KlVyPv0VCAIim0BCIiAml0Psb2LzTN711kuDWgNtodY8RvcAZjRHJZPw+7Ow9wMTL4pHuOQNOrGNJDia2Jr6EdV0TheGGHaZDWd9ZBVFkbjlMh86Kz/aPa2ztU6d7rK/F8umfXyvbYPCWSqy13ffXwMrirxI7uQPDTRR/7Y0BB662te+IczBkgLbaxp5eFhylz5Ha6AAV50BzXvcGuTEd5JoTlppuhuHb9K/Fan8XmsbC8uLhI91BoBN+InfkL3HoqTCL/ANEIceHH+jtlLu07bot/fC68eRx3Gyhz3OboHG6qq/E/srFU0oW6SsrGdbu7hEUr08AKEqFncLA71l1ROt7VR/Hp5ryTsrn1GO00jYux0jZZWxuNOIdWp1JaQ0b9SF2fsljmz4Npef5JMLw6jo0+BwP+OmnRcl7J4mSGdxbHkheHEEnLzBNUfTTyXV+zDWRwPLWgMdkqtc1WQS67JA69Vk+2WpS0yytn1v0efpyL+lGXcJPVPpvS38t/6MbiuNINAUL3Juhflub5eSqfhm4vDTYL77ovCdh3jKLPxFE/3LzTxBplOfJlccoBF+IigNdOe3O1lYGQwZQ4Ma8F2oNnJoQdTfW/VV6g4JJZPd14+DWh2VVaKit3v/RwTHYZ0b3McCHNJBB3BG4WNa698T+yXfB2OwwDrAOIY3djzu+h908+hv25G5pBo7rZ4TFRxFNSjrvXB/fMzmJoOnLaS/F6cuXh/e8oRFNLqOUhERAFXG2ypaznyRz9KGyAvd23y/fuix8xRAUoikoCEREAWydheBsxmMiw73ENedS2roNJNXz0Wtr3OyWNbDio5Hmg12+unhIB086UOI2u6lsOzs7eRLQaU1c7rDwZmGZ3UET2Rso5i0vc4WSbJ0BJ1oDp7W8cZXj+SSXANzuDjoDfiAB9ferC1V3HZNXNltp2c3X3sfkeiw5uKTDWweugzH0WQWDm57Tavzv+7+bZewrxsrm/4CEt3jcCTeaj+78uVq7xYw4iMMxMGZhaNXW02CDu0g0CBqtGg41MRq+m9FlDjWJa0fbua0C7z5fUdFE8HUUtpPNc2v2fMq0HK8vco492LwD8PiJYWyRvhic/R4MRI5HML59VxpzdaC6fxfjrTBOx+IEneN0b3mcl+lXV8wFzQ+HXmtL2UqqjLvJN6Wu77s83zK/HShJpx+5GOiklQrUrwvX4LN4slavLQDsBrzrfdeQs3ARkuDuQIsddV8TScbMmw8nGrFridzxvZJuFfmhhxEzrbmc5xymgBYa0AHbnavySPdGGmNzdD4Q1za0sgUPValju0GcgRPjcNKB+YDyDtVcHHcS1uspHUbAaLIPDVWo7bu+d7/PsaGlifxV9T2osK7MHsje0Bwe8uAouo1pVHS/S7OysOkL3PeYpCRJocpNspzQDen37J/NeYztTiW00TE5qAyuNg8/r/wC1jntJi7NzuJDqaSSTW9+hAKkWFqcvOWnl4Hjrxbz++htvAsTOx9GKRp1JppLHeEl1u2OpOg5lOMdlsFPI58mEczU5nRu7q+VhrmluvlS1SDjOIkd9o7fZtX93eysrF8VLCWSTMaDyLg01y0GpUf8AGqxqbUZWf+t/e9yPvobWfj93mpfEns/DgsQ1kBeWuhZIQ8guBcTocoHID6rSls/bfFRyTh0bg62NzEXRdqDv5UtYWowSmsPDbd3bNspMTbvMgiIuogKw81V6KhEQBERAERSAgIV5jABZTLl335KhzyUBQiIgNq4DjG90G3lc0m9dwTYIXrDFCQH+oUD5tvdaGxxGoNL1+H8Rp3Ma/hsR9LXDWwubkjqp1srPU2fAzjPR0II/Hf8ARYHanE5mfPRB2G2+x+gVmSenX+/VY3FHZj5Ea+nl53qoKdK1RSPtzvmuB4jnULBWOSqnto0qFanG+YRSFCHgWThT4gOR3/ZWMpBXjVz1Ozue7w+V5fVDTdw0N6Vf0W0YSXMyjrQFE66c9VpXDJC112QNdPx/Re7wx+WPU6uN+gB0/VV+JpXO2NV7HiZTLz8xrmNcyP3+KuF2fxZaJJ+nX8SvPnlNqqHEBgL+QBNfkPqoe7bzJJVN5k8Y4x/DjJF/NItzv6b6eZv2WnzYhziSSSTuSpxUxe4uJskklY6saNFU1z4nHUqt5LQqJVKqYy1XK/kNlMQlpERAEUgqEAREQBFKhAVucTuqERATShEQBVWoAUvZSA9WLEZma77f6USvzN9NVgQPpXGvpQuFiTaMZypVyRqtqYjYRTSqZGTsgIa21XIANt+arGny/VWXBAZOFBJ5V5rPlxR2GwWCx1BUiSioZR2nclTsekJ7GqtY6bwUOZ1WKJFbfMTf70XzGnmHIxlciaCdVbRdBEXXu5fsq0iIAilQgCIiAIiIAiIgCKbUIAqmi1SrrXiqpASKb6q242oJUICQqsyoUoCslLVCICvMqmSkbK0UQFQcpzKhEBWXIHKi0tAVlyotVNYTsqEBJUIiAIiIAiK6Gf1aIBGy9TsrSuvkvTYK0gCIiAIiIAiIgCIiAIiIAiIgCIiAIiIAiIgCIiAyI/kPusdEQBSERAHKERAFk4jYeqIgMZERAEREB//Z" >
<link rel="stylesheet" href="css/footer.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<link rel="stylesheet" href="css/view.css">
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js" integrity="sha512-A7AYk1fGKX6S2SsHywmPkrnzTZHrgiVT7GcQkLGDe2ev0aWb8zejytzS8wjo7PGEXKqJOrjQ4oORtnimIRZBtw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</head>
<body>

   <div class="d-flex justify-content-around pt-5 py-5 mt-5"> 
      <div class=" px-5 py-5 shadow rounded-3 div1 bg-secondary" >
      <a href="showbookedrooms.jsp" class="text-white fw-bold fs-3">VIEW ROOM BOOKING</a>
      </div>
      <div class=" px-5 py-5 shadow rounded-3 div2 bg-secondary">
            <a href="showbookedhall.jsp" class="text-white fw-bold fs-3">VIEW HALL BOOKING</a>
      
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
    <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
</body>
</html>