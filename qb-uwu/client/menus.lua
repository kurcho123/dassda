Citizen.CreateThread(function()
	exports['qb-target']:AddBoxZone("uwuDuty", vector3(-593.99, -1052.34, 22.34), 1, 1.2, {
		name = "uwuDuty",
		heading = 91,
		debugpoly = false,
		minZ=21.0,
		maxZ=24.6,
	}, {
		options = {
		    {
			event = "qb-uwu:DutyUwu",
			icon = "far fa-clipboard",
			label = "Смяна",
			job = "uwu",
		    },
		},
		distance = 2.5
	})

		exports['qb-target']:AddBoxZone("uwu_tray_1", vector3(-584.1, -1062.1, 22.6), 0.5, 0.7, {
			name = "uwu_tray_1",
			heading = 87.8,
			debugpoly = false,
			minZ=21.1,
			maxZ=22.6,
		}, {
			options = {
			    {
				event = "qb-uwu:Tray1",
				icon = "far fa-clipboard",
				label = "Табла",
			    },
			},
			distance = 1.5
		})

	exports['qb-target']:AddBoxZone("uwu_tray_2", vector3(-584.11, -1059.39, 22.67), 0.5, 0.7, {
		name="uwu_tray_2",
		heading=87.8,
		debugpoly = false,
		minZ=21.1,
		maxZ=22.6,
	}, {
		options = {
		    {
			event = "qb-uwu:Tray2",
			icon = "far fa-clipboard",
			label = "Табла",
		    },
		},
		distance = 1.5
	})

	exports['qb-target']:AddBoxZone("uwu_tray_3", vector3(-587.59, -1059.67, 22.5), 1.6, 4.6, {
		name="uwu_tray_3",
		heading=89,
		debugpoly = false,
		minZ=21.0,
		maxZ=22.6,
	}, {
		options = {
		    {
			event = "qb-uwu:Tray3",
			icon = "far fa-clipboard",
			label = "Табла",
		    },
		},
		distance = 3.5
	})

	exports['qb-target']:AddBoxZone("uwudrinks", vector3(-586.97, -1061.83, 22.34), 1.0, 1.0, {
	    name="uwudrinks",
	    heading=355.34,
	    debugPoly=false,
	    minZ=21.19,
        maxZ=24.19
	    }, {
		options = {
		    {
			event = "uwu:DrinkMenu",
			icon = "fas fa-filter",
			label = "Напитки",
			job = "uwu",
		    },
		},
		distance = 1.5
	    })

        exports['qb-target']:AddBoxZone("uwufridge", vector3(-591.31, -1058.67, 22.43), 1.6, 1, {
            name="uwufridge",
            heading=89.0,
            debugpoly = false,
            minZ=21.0,
            maxZ=23.6,
        }, {
                options = {
                    {
                        event = "uwu:stock",
                        icon = "fas fa-laptop",
                        label = "Хладилник",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("pancakeStation", vector3(-590.97, -1061.13, 22.94), 0.7, 1.5, {
            name="pancakeSation",
            heading=91.25,
            debugPoly=false,
            minZ=23.0,
            maxZ=23.5,
        }, {
                options = {
                    {
                        event = "uwu:pancake",
                        icon = "fas fa-rocket",
                        label = "Приготвяне на плачинка",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("misoStation", vector3(-590.95, -1056.56, 22.28), 0.7, 1.5, {
            name="misoStation",
            heading=91.25,
            debugPoly=false,
            minZ=22.3,
            maxZ=22.6,
        }, {
                options = {
                    {
                        event = "uwu:misoSoup",
                        icon = "fas fa-rocket",
                        label = "Приготвяне на супа",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("cupcakeStation", vector3(-590.93, -1064.12, 22.34), 0.7, 0.7, {
            name="cupcakeStation",
            heading=91.25,
            debugPoly=false,
            minZ=22.3,
            maxZ=22.8,
        }, {
                options = {
                    {
                        event = "uwu:cupcake",
                        icon = "fas fa-rocket",
                        label = "Кексче",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("sandwichStation", vector3(-590.93, -1063.05, 22.34), 0.7, 0.7, {
            name="sandwichStation",
            heading=91.25,
            debugPoly=false,
            minZ=22.3,
            maxZ=22.8,
        }, {
                options = {
                    {
                        event = "uwu:sandysushi",
                        icon = "fas fa-rocket",
                        label = "Приготвяне на храна",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("uwu_register_1", vector3(-584.25, -1058.8, 22.37), 0.5, 0.4, {
            name="uwu_register_1",
            debugpoly = false,
            heading=270,
            minZ=21.0,
            maxZ=22.8,
        }, {
                options = {
                    {
                        event = "qb-uwu:bill",
                        parms = "1",
                        icon = "fas fa-credit-card",
                        label = "Charge Customer",
                        job = "uwu",
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("uwu_register_2", vector3(-584.25, -1061.5, 22.37), 0.6, 0.5, {
            name="uwu_register_2",
            debugpoly = false,
            heading=270,
            minZ=21.0,
            maxZ=22.8,
            }, {
                    options = {
                        {
                            event = "qb-uwu:bill",
                            parms = "2",
                            icon = "fas fa-credit-card",
                            label = "Charge Customer",
                            job = "uwu",
                        },
                    },
                    distance = 1.5
                })
end)

RegisterNetEvent('uwu:stock', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Хладилник |",
            isMenuHeader = true,
        },
        {
            header = "• Закупи продукти",
            txt = "Отворете магазин",
            params = {
                event = "qb-uwu:shop"
            }
        },
        {
            header = "• Отворете хладилник",
            txt = "Вижте какво има в наличнос",
            params = {
                event = "qb-uwu:Storage"
            }
        },
        {
            header = "⬅ Изход",
            txt = 'Излезте',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

--Preparing Food--
--Pancakes
RegisterNetEvent('uwu:pancake', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Печка |",
            isMenuHeader = true,
        },
        {
            header = "• Палачинки",
            txt = "Мляко, Яйце, Сирене и Брашно",
            params = {
                event = "qb-uwu:pancake"
            }
        },
        {
            header = "⬅ Изход",
            txt = '',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

--Miso Soup--
RegisterNetEvent('uwu:misoSoup', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Котлон |",
            isMenuHeader = true,
        },
        {
            header = "• Пиготвяне на супа",
            txt = "Паста, Вода и Тофу",
            params = {
                event = "qb-uwu:misoSoup"
            }
        },
        {
            header = "⬅ Изход",
            txt = '',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

--Cupcake--
RegisterNetEvent('uwu:cupcake', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Блендер |",
            isMenuHeader = true,
        },
        {
            header = "• Приготвяне на кексче с глазура",
            txt = "Мляко, Яйце, Захар и Брашно",
            params = {
                event = "qb-uwu:cupcake"
            }
        },
        {
            header = "⬅ Изход",
            txt = '',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

--uwusandy--
RegisterNetEvent('uwu:sandysushi', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Приготвяне на храна |",
            isMenuHeader = true,
        },
        {
            header = "• Приготвяне на суши",
            txt = "Риба тон, Ориз, Авокадо, и Нори",
            params = {
                event = "qb-uwu:sushi"
            }
        },
        {
            header = "• Приготвяне на бял десерт",
            txt = "Мляко, Брашно, Захар, Яйце и Пръчки от ванилия",
            params = {
                event = "qb-uwu:vSandwich"
            }
        },
        {
            header = "• Приготвяне на черен десерт",
            txt = "Мляко, Брашно, Захар, Яйце и Шоколад",
            params = {
                event = "qb-uwu:cSandwich"
            }
        },
        {
            header = "• Приготвяне на салата",
            txt = "Маруля, Тофу, Боб, Манго и Авокадо",
            params = {
                event = "qb-uwu:CreateBudhabowl"
            }
        },
        {
            header = "• Приготвяна на изненада",
            txt = "Порция супи, Порция лимонада от роза и Салата",
            params = {
                event = "qb-uwu:CreateBentobox"
            }
        },
        {
            header = "⬅ Изход",
            txt = '',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

-- Bubble Tea--
RegisterNetEvent('uwu:DrinkMenu', function(data)
    exports['qb-menu']:openMenu({
        {
            header = "| Направи напитка |",
            isMenuHeader = true,
        },
        {
            header = "• Лимонада от боровинки",
            txt = "Вода, Чай, Сироп от боровинка и Топчета от тапиока",
            params = {
                event = "qb-uwu:bbtea"
            } 
        },
        {
            header = "• Лимонада от роза",
            txt = "Вода, Чай, Сироп от роза и Топчета от тапиока",
            params = {
                event = "qb-uwu:rosetea"
            }
        },
        {
            header = "• Лимонада от мента",
            txt = "Вода, Чай, Сироп от мента и Топчета от тапиока",
            params = {
                event = "qb-uwu:minttea"
            }
        },
        {
            header = "⬅ Изход",
            txt = 'Излезте от менюто',
            params = {
                event = 'qb-menu:closeMenu',
            }
        },
    })
end)

-- Register --

RegisterNetEvent("qb-uwu:bill", function()
    local bill = exports["qb-input"]:ShowInput({
        header = "Изготвяне на фактура",
        submitText = "Потвърдете",
        inputs = {
            {
                type = 'number',
                name = "id",
                text = 'ID',
                isRequired = true,
            },
            {
                type = 'number',
                name = "amount",
                text = '$ (Сума)',
                isRequired = true
            },
        }
    })
    if bill ~= nil then
        if not bill.id or not bill.amount then
            return
        end
        TriggerServerEvent("qb-uwu:bill:player", bill.id, bill.amount)
    end
end)