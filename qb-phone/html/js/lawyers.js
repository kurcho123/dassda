SetupLawyers = function(data) {
    $(".lawyers-list").html("");
    var lawyers = [];
    var state = [];
    var mechanic = [];
    var taxi = [];
    var police = [];
    var ambulance = [];
    var burgershot = [];

    if (data.length > 0) {

        $.each(data, function(i, lawyer) {
            if (lawyer.typejob == "lawyer") {
                lawyers.push(lawyer);
            }
            if (lawyer.typejob == "state") {
                state.push(lawyer);
            }
            if (lawyer.typejob == "mechanic") {
                mechanic.push(lawyer);
            }
            if (lawyer.typejob == "taxi") {
                taxi.push(lawyer);
            }
            if (lawyer.typejob == "police") {
                police.push(lawyer);
            }
            if (lawyer.typejob == "ambulance") {
                ambulance.push(lawyer);
            }
	    if (lawyer.typejob == "burgershot") {
                burgershot.push(lawyer);
            }
        });



        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(155, 15, 120);">Съдебна власт (' + state.length + ')</h1>');

        if (state.length > 0) {
            $.each(state, function(i, lawyer1) {
                var element = '<div class="lawyer-list" id="lawyerid1-' + i + '"> <div class="lawyer-list-firstletter" style="background-color: rgb(155, 15, 120);">' + (lawyer1.name).charAt(0).toUpperCase() + '</div> <div class="lawyer-list-fullname">' + lawyer1.name + '</div> <div class="lawyer-list-call"><i class="fas fa-phone"></i></div> </div>'
                $(".lawyers-list").append(element);
                $("#lawyerid1-" + i).data('LawyerData', lawyer1);
            });
        } else {
            var element = '<div class="lawyer-list"><div class="no-lawyers">В момента няма налични хора от съдебната власт.</div></div>'
            $(".lawyers-list").append(element);
        }

        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(0, 204, 102);">Механици (' + mechanic.length + ')</h1>');

        if (mechanic.length > 0) {
            $.each(mechanic, function(i, lawyer2) {
                var element = '<div class="lawyer-list" id="lawyerid2-' + i + '"> <div class="lawyer-list-firstletter" style="background-color: rgb(0, 204, 102);">' + (lawyer2.name).charAt(0).toUpperCase() + '</div> <div class="lawyer-list-fullname">' + lawyer2.name + '</div> <div class="lawyer-list-call"><i class="fas fa-phone"></i></div> </div>'
                $(".lawyers-list").append(element);
                $("#lawyerid2-" + i).data('LawyerData', lawyer2);
            });
        } else {
            var element = '<div class="lawyer-list"><div class="no-lawyers">В момента няма налични Механици.</div></div>'
            $(".lawyers-list").append(element);
        }

        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(255, 190, 27);">Таксита (' + taxi.length + ')</h1>');

        if (taxi.length > 0) {
            $.each(taxi, function(i, lawyer3) {
                var element = '<div class="lawyer-list" id="lawyerid3-' + i + '"> <div class="lawyer-list-firstletter" style="background-color: rgb(255, 190, 27);">' + (lawyer3.name).charAt(0).toUpperCase() + '</div> <div class="lawyer-list-fullname">' + lawyer3.name + '</div> <div class="lawyer-list-call"><i class="fas fa-phone"></i></div> </div>'
                $(".lawyers-list").append(element);
                $("#lawyerid3-" + i).data('LawyerData', lawyer3);
            });
        } else {
            var element = '<div class="lawyer-list"><div class="no-lawyers">В момента няма налични Таксита.</div></div>'
            $(".lawyers-list").append(element);
        }
        
        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(0, 102, 255);">Полицаи (' + police.length + ')</h1>');

        if (police.length > 0) {
            $.each(police, function(i, lawyer4) {
                var element = '<div class="lawyer-list" id="lawyerid4-' + i + '"> <div class="lawyer-list-firstletter" style="background-color: rgb(0, 102, 255);">' + (lawyer4.name).charAt(0).toUpperCase() + '</div> <div class="lawyer-list-fullname">' + lawyer4.name + '</div> <div class="lawyer-list-call"><i class="fas fa-phone"></i></div> </div>'
                $(".lawyers-list").append(element);
                $("#lawyerid4-" + i).data('LawyerData', lawyer4);
            });
        } else {
            var element = '<div class="lawyer-list"><div class="no-lawyers">В момента няма налични Полицаи.</div></div>'
            $(".lawyers-list").append(element);
        }
        
        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(255, 0, 0);">Лекари (' + ambulance.length + ')</h1>');

        if (ambulance.length > 0) {
            $.each(ambulance, function(i, lawyer5) {
                var element = '<div class="lawyer-list" id="lawyerid5-' + i + '"> <div class="lawyer-list-firstletter" style="background-color: rgb(255, 0, 0);">' + (lawyer5.name).charAt(0).toUpperCase() + '</div> <div class="lawyer-list-fullname">' + lawyer5.name + '</div> <div class="lawyer-list-call"><i class="fas fa-phone"></i></div> </div>'
                $(".lawyers-list").append(element);
                $("#lawyerid5-" + i).data('LawyerData', lawyer5);
            });
        } else {
            var element = '<div class="lawyer-list"><div class="no-lawyers">В момента няма налични Лекари.</div></div>'
            $(".lawyers-list").append(element);
        }
	$(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(102, 0, 204);">Burgershot (' + burgershot.length + ')</h1>');

        if (burgershot.length > 0) {
            $.each(burgershot, function(i, lawyer6) {
                var element = '<div class="lawyer-list" id="lawyerid6-' + i + '"> <div class="lawyer-list-firstletter" style="background-color: rgb(102, 0, 204);">' + (lawyer6.name).charAt(0).toUpperCase() + '</div> <div class="lawyer-list-fullname">' + lawyer6.name + '</div> <div class="lawyer-list-call"><i class="fas fa-phone"></i></div> </div>'
                $(".lawyers-list").append(element);
                $("#lawyerid6-" + i).data('LawyerData', lawyer6);
            });
        } else {
            var element = '<div class="lawyer-list"><div class="no-lawyers">There are no employees available.</div></div>'
            $(".lawyers-list").append(element);
        }
    } else {
        $(".lawyers-list").append('<h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; border-top-left-radius: .5vh; border-top-right-radius: .5vh; width:100%; display:block; background-color: rgb(42, 137, 214);">Lawyers (' + lawyers.length + ')</h1>');

        var element = '<div class="lawyer-list"><div class="no-lawyers">There are no lawyers available.</div></div>'
        $(".lawyers-list").append(element);

        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(155, 15, 120);">Real Estate (' + state.length + ')</h1>');

        var element = '<div class="lawyer-list"><div class="no-lawyers">There are no real estate agents available.</div></div>'
        $(".lawyers-list").append(element);

        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(0, 204, 102);">Mechanic (' + mechanic.length + ')</h1>');

        var element = '<div class="lawyer-list"><div class="no-lawyers">There are no mechanics available.</div></div>'
        $(".lawyers-list").append(element);

        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(255, 190, 27);">Taxi (' + taxi.length + ')</h1>');

        var element = '<div class="lawyer-list"><div class="no-lawyers">There are no taxis available.</div></div>'
        $(".lawyers-list").append(element);
        
        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(0, 102, 255);">Police (' + police.length + ')</h1>');

        var element = '<div class="lawyer-list"><div class="no-lawyers">There are no polices a available.</div></div>'
        $(".lawyers-list").append(element);
        
        $(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(255, 0, 0);">Ambulance (' + ambulance.length + ')</h1>');

        var element = '<div class="lawyer-list"><div class="no-lawyers">Няма наличен персонал в болницата.</div></div>'
        $(".lawyers-list").append(element);

	$(".lawyers-list").append('<br><h1 style="font-size:1.641025641025641vh; padding:1.0256410256410255vh; color:#fff; margin-top:0; width:100%; display:block; background-color: rgb(102, 0, 204);">Burgershot (' + burgershot.length + ')</h1>');

        var element = '<div class="lawyer-list"><div class="no-lawyers">There are no delivery drivers available.</div></div>'
        $(".lawyers-list").append(element);
    }
}

$(document).on('click', '.lawyer-list-call', function(e){
    e.preventDefault();

    var LawyerData = $(this).parent().data('LawyerData');
    
    var cData = {
        number: LawyerData.phone,
        name: LawyerData.name
    }

    $.post('https://qb-phone/CallContact', JSON.stringify({
        ContactData: cData,
        Anonymous: QB.Phone.Data.AnonymousCall,
    }), function(status){
        if (cData.number !== QB.Phone.Data.PlayerData.charinfo.phone) {
            if (status.IsOnline) {
                if (status.CanCall) {
                    if (!status.InCall) {
                        if (QB.Phone.Data.AnonymousCall) {
                            QB.Phone.Notifications.Add("fas fa-phone", "Phone", "Обашдаш се анонимно!");
                        }
                        $(".phone-call-outgoing").css({"display":"block"});
                        $(".phone-call-incoming").css({"display":"none"});
                        $(".phone-call-ongoing").css({"display":"none"});
                        $(".phone-call-outgoing-caller").html(cData.name);
                        QB.Phone.Functions.HeaderTextColor("white", 400);
                        QB.Phone.Animations.TopSlideUp('.phone-application-container', 400, -160);
                        setTimeout(function(){
                            $(".lawyers-app").css({"display":"none"});
                            QB.Phone.Animations.TopSlideDown('.phone-application-container', 400, 0);
                            QB.Phone.Functions.ToggleApp("phone-call", "block");
                        }, 450);
    
                        CallData.name = cData.name;
                        CallData.number = cData.number;
                    
                        QB.Phone.Data.currentApplication = "phone-call";
                    } else {
                        QB.Phone.Notifications.Add("fas fa-phone", "Phone", "Вече сте свързани с разговор!");
                    }
                } else {
                    QB.Phone.Notifications.Add("fas fa-phone", "Phone", "Този човек вече е в разговор");
                }
            } else {
                QB.Phone.Notifications.Add("fas fa-phone", "Phone", "Този човек не е извън обхват!");
            }
        } else {
            QB.Phone.Notifications.Add("fas fa-phone", "Phone", "Не можете да се обадите на собствения си номер!");
        }
    });
});
