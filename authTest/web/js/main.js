$(document).ready(function(){
        var oldPages;
        function appendData (pages) {
            $('#reslt').empty();
            pages.forEach(function (page) {
                $('#reslt').append(page.name+"<br/>");
            });
        };

        // function treatData (pages) {
        //     var newPages = [];
        //     console.log(pages);
        //     if (!oldPages) {
        //         oldPages = pages;
        //         appendData(pages);
        //         return;
        //     }
        //     pages.forEach(function (page) {
        //         console.log("On verif lélement"  + page.name);
        //         if (!isPageInArray(oldPages, page)) {
        //             oldPages.push(page);
        //             newPages.push(page);
        //         }
        //     });
        //     appendData(newPages);
        // };

        // function isPageInArray(oldPages, page) {
        //     var res = oldPages.filter(function (oldPage) {
        //         return oldPage.id === page.id;
        //     });
        //     if (res.length > 0) {
        //         return true;
        //     } else {
        //         return false;
        //     }
        // };

        function show(){

            setInterval(function(){
                $.ajax(
                    {
                        type:'GET',
                        url: url,
                        beforeSend: function(){
                            // console.log('chargement');
                        },
                        success: function(data){
                                // treatData(data.pages);
                                appendData(data.pages);
                        }
                    }
                );
            }, 1000);
        }

        show();

    $('#btn-send').click(function(){
        var name = $('#name').val().length;
        if (name <= 0) {
            alert("Empty");
        }else{

        };
    })


});


// findMissingLetter(str) {


//     return;
// }

// findMissingLetter("defgi");