QBShared = QBShared or {}
QBShared.ForceJobDefaultDutyAtLogin = true -- true: Force duty state to jobdefaultDuty | false: set duty state from database last saved
QBShared.Jobs = {
	['unemployed'] = {
		label = 'Безработен',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Айляк',
                payment = 50
            },
        },
	},
    ['burgershot'] = {
		label = 'BurgerShot',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Касиер',
				payment = 550
			},
			['1'] = {
				name = 'Drive Thru Касиер',
				payment = 650
			},
			['2'] = {
				name = 'Работник Кухня',
				payment = 800
			},
			['3'] = {
				name = 'Мениджър',
				payment = 950
			},
			['4'] = {
				name = 'Собственик',
				isboss = true,
				payment = 1000
			},
		},
	},
	['shushlqcite2'] = {
		label = 'Баба сводник',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Касиер',
				payment = 550
			},
			['1'] = {
				name = 'Drive Thru Касиер',
				payment = 650
			},
			['2'] = {
				name = 'Работник Кухня',
				payment = 800
			},
			['3'] = {
				name = 'Мениджър',
				payment = 950
			},
			['4'] = {
				name = 'Собственик',
				isboss = true,
				payment = 1000
			},
		},
	},
	['triadjob'] = {
		label = 'Триади',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Касиер',
				payment = 550
			},
			['1'] = {
				name = 'Drive Thru Касиер',
				payment = 650
			},
			['2'] = {
				name = 'Работник Кухня',
				payment = 800
			},
			['3'] = {
				name = 'Мениджър',
				payment = 950
			},
			['4'] = {
				name = 'Собственик',
				isboss = true,
				payment = 1000
			},
		},
	},
	['pizzeria'] = {
		label = 'Пицария Салвини',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Касиер',
				payment = 550
			},
			['1'] = {
				name = 'Drive Thru Касиер',
				payment = 650
			},
			['2'] = {
				name = 'Работник Кухня',
				payment = 800
			},
			['3'] = {
				name = 'Мениджър',
				payment = 950
			},
			['4'] = {
				name = 'Собственик',
				isboss = true,
				payment = 1000
			},
		},
	},
	['apteka'] = {
		label = 'Аптека',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Касиер',
				payment = 550
			},
			['1'] = {
				name = 'Drive Thru Касиер',
				payment = 650
			},
			['2'] = {
				name = 'Работник Кухня',
				payment = 800
			},
			['3'] = {
				name = 'Мениджър',
				payment = 950
			},
			['4'] = {
				name = 'Собственик',
				isboss = true,
				payment = 1000
			},
		},
	},
	['bistro'] = {
		label = 'Бистро',
		defaultDuty = false,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Касиер',
				payment = 550
			},
			['1'] = {
				name = 'Барман',
				payment = 650
			},
			['2'] = {
				name = 'Работник Кухня',
				payment = 800
			},
			['3'] = {
				name = 'Мениджър',
				payment = 950
			},
			['4'] = {
				name = 'Собственик',
				isboss = true,
				payment = 1000
			},
		},
	},
	['uwu'] = {
		label = 'Cat Cafe',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Работник',
                payment = 650
            },
			['1'] = {
                name = 'Отговорник',
                payment = 750
            },
			['2'] = {
                name = 'Управител',
                payment = 950
            },
			['3'] = {
                name = 'Собственик',
                isboss = true,
                payment = 1200
            },
        },
	},
	['toto'] = {
		label = 'Национална лотария',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Работник',
                payment = 450
            },
			['1'] = {
                name = 'Отговорник',
                payment = 550
            },
			['2'] = {
                name = 'Управител',
                payment = 650
            },
			['3'] = {
                name = 'Собственик',
                isboss = true,
                payment = 900
            },
        },
	},
	['elshop'] = {
		label = 'Анасов техника',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Работник',
                payment = 550
            },
			['1'] = {
                name = 'Отговорник',
                payment = 650
            },
			['2'] = {
                name = 'Управител',
                payment = 950
            },
			['3'] = {
                name = 'Собственик',
                isboss = true,
                payment = 1500
            },
        },
	},
	['dai'] = {
		label = 'Dai Be',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Работник',
                payment = 350
            },
			['1'] = {
                name = 'Отговорник',
                payment = 450
            },
			['2'] = {
                name = 'Управител',
                payment = 750
            },
			['3'] = {
                name = 'Собственик',
                isboss = true,
                payment = 1000
            },
        },
	},
	['security'] = {
		label = 'Major Security',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Работник',
                payment = 350
            },
			['1'] = {
                name = 'Отговорник',
                payment = 450
            },
			['2'] = {
                name = 'Управител',
                payment = 750
            },
			['3'] = {
                name = 'Собственик',
                isboss = true,
                payment = 1000
            },
        },
	},
	['salvini646521'] = {
		label = 'Salvini',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Работник',
                payment = 1
            },
			['1'] = {
                name = 'Отговорник',
                payment = 1
            },
			['2'] = {
                name = 'Управител',
                payment = 1
            },
			['3'] = {
                name = 'Собственик',
                isboss = true,
                payment = 1
            },
        },
	},
	['pothead'] = {
		label = 'Pothead',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Касиер',
				payment = 550
			},
			['1'] = {
				name = 'Drive Thru Касиер',
				payment = 650
			},
			['2'] = {
				name = 'Работник Кухня',
				payment = 800
			},
			['3'] = {
				name = 'Мениджър',
				payment = 950
			},
			['4'] = {
				name = 'Собственик',
				isboss = true,
				payment = 1500
			},
		},
	},
    ['pawn'] = {
		label = 'Заложна къща',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Охрана',
				payment = 500
			},
			['1'] = {
				name = 'Шофьор',
				payment = 600
			},
			['2'] = {
				name = 'Касиер',
				payment = 750
			},
			['3'] = {
				name = 'Секретар',
				payment = 1000
			},
			['4'] = {
				name = 'Мениджър',
				isboss = true,
				payment = 1500
			},
			['5'] = {
				name = 'Собственик',
				isboss = true,
				payment = 2000
			},
		},
	},
	['bean'] = {
		label = 'Bean Coffe',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Касиер',
				payment = 450
			},
			['1'] = {
				name = 'Drive Thru Касиер',
				payment = 600
			},
			['2'] = {
				name = 'Работник Кухня',
				payment = 700
			},
			['3'] = {
				name = 'Мениджър',
				payment = 850
			},
			['4'] = {
				name = 'Собственик',
				isboss = true,
				payment = 1000
			},
		},
	},
	['vanilla'] = {
		label = 'Vanilla Unicorn',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
			['0'] = {
				name = 'Касиер',
				payment = 250
			},
			['1'] = {
				name = 'Drive Thru Касиер',
				payment = 400
			},
			['2'] = {
				name = 'Работник Кухня',
				payment = 500
			},
			['3'] = {
				name = 'Мениджър',
				payment = 600
			},
			['4'] = {
				name = 'Собственик',
				isboss = true,
				payment = 900
			},
		},
	},
	['cockatoos'] = {
        label = 'Дискотека Бахама',
        defaultDuty = true,
		offDutyPay = false,
        grades = {
            ['0'] = {
                label = 'Employee',
                payment = 550
            },
            ['1'] = {
                label = 'Manager',
                payment = 750
            },
            ['2'] = {
                label = 'Boss',
				isboss = true,
				payment = 1100
            },
        },
    },
	['police'] = {
		label = 'Police',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Cadet',
                payment = 1000
            },
			['1'] = {
                name = 'Solo Cadet',
                payment = 1400
            },
			['2'] = {
                name = 'Officer',
                payment = 1500
            },
			['3'] = {
                name = 'Senior Officer',
                payment = 1700
            },
			['4'] = {
                name = 'Corporal',
                payment = 2200
            },
			['5'] = {
                name = 'Sergeant',
                payment = 2200
            },
			['6'] = {
                name = 'SS',
                payment = 2200
            },
			['7'] = {
                name = 'Lieutenant',
                payment = 2300
            },
			['8'] = {
                name = 'Captain',
                payment = 2400
            },
			['9'] = {
                name = 'Assistant Chief of Police',
		        payment = 2600
            },
			['10'] = {
                name = 'Chief of Police',
				isboss = true,
                payment = 2700
            },
        },
	},
	['ambulance'] = {
		label = 'Болница Пирогов',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Стажант',
                payment = 1500
            },
			['1'] = {
                name = 'Парамедик',
                payment = 1750
            },
			['2'] = {
                name = 'Младши Лекар',
                payment = 2000
            },
			['3'] = {
                name = 'Лекар',
                payment = 2250
            },
			['4'] = {
                name = 'Старши Лекар',
                payment = 2500
            },
			['5'] = {
                name = 'Ортопед',
                payment = 2705
            },
			['6'] = {
                name = 'Хирург',
                payment = 3000
            },
			['7'] = {
                name = 'Главен лекар',
                payment = 3000
            },
			['8'] = {
                name = 'Психолог',
                payment = 3000
            },
			['9'] = {
                name = 'Заместник Директор',
				isboss = true,
                payment = 3200
            },
			['10'] = {
                name = 'Директор',
				isboss = true,
                payment = 3500
            },
        },
	},
	['realestate'] = {
		label = 'Брокет',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 400
            },
			['1'] = {
                name = 'House Sales',
                payment = 800
            },
			['2'] = {
                name = 'Business Sales',
                payment = 850
            },
			['3'] = {
                name = 'Broker',
                payment = 900
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1000
            },
        },
	},
	['taxi'] = {
		label = 'Такси',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Новобранец',
                payment = 500
            },
			['1'] = {
                name = 'Бакшиш',
                payment = 600
            },
			['2'] = {
                name = 'Шофьор',
                payment = 700
            },
			['3'] = {
                name = 'Старши шофьор',
                payment = 800
            },
			['4'] = {
                name = 'Лоялен Бакшиш',
                payment = 900
            },
			['5'] = {
                name = 'Зам. Шеф',
                payment = 1000
            },
			['6'] = {
                name = 'Управител',
				isboss = true,
                payment = 1100
            },
			['7'] = {
                name = 'Собственик',
				isboss = true,
                payment = 1200
            },
        },
	},
    ['bus'] = {
		label = 'Абтобусна компания',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Шофьор',
                payment = 450
            },
		},
	},
	['cardealer'] = {
		label = 'Vehicle Dealer',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 350
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 450
            },
			['2'] = {
                name = 'Business Sales',
                payment = 550
            },
			['3'] = {
                name = 'Finance',
                payment = 650
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1000
            },
        },
	},
    ['cardealer2'] = {
		label = 'Vehicle Dealer2',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Recruit',
                payment = 350
            },
			['1'] = {
                name = 'Showroom Sales',
                payment = 500
            },
			['2'] = {
                name = 'Business Sales',
                payment = 600
            },
			['3'] = {
                name = 'Finance',
                payment = 900
            },
			['4'] = {
                name = 'Manager',
				isboss = true,
                payment = 1000
            },
        },
	},
	['mechanic'] = {
		label = 'Автосервиз',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Новобранец',
                payment = 550
            },
			['1'] = {
                name = 'Напреднал',
                payment = 750
            },
			['2'] = {
                name = 'Разбирач',
                payment = 850
            },
			['3'] = {
                name = 'Старши механик',
                payment = 1000
            },
			['4'] = {
                name = 'Заместник-шеф',
				isboss = true,
                payment = 1100
            },
			['5'] = {
                name = 'Собственик',
				isboss = true,
                payment = 1200
            },
        },
	},
	['mechanic2'] = {
		label = 'Tokyo Customs',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Новобранец',
                payment = 550
            },
			['1'] = {
                name = 'Напреднал',
                payment = 750
            },
			['2'] = {
                name = 'Разбирач',
                payment = 850
            },
			['3'] = {
                name = 'Старши механик',
                payment = 1000
            },
			['4'] = {
                name = 'Заместник-шеф',
				isboss = true,
                payment = 1100
            },
			['5'] = {
                name = 'Собственик',
				isboss = true,
                payment = 1200
            },
        },
	},
	['state'] = {
		label = 'Община',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Адвокат',
                payment = 700
            },
		    ['1'] = {
                name = 'НАП',
                payment = 900
            },
			['2'] = {
                name = 'Съдия',
			    payment = 1200
            },
			['3'] = {
                name = 'Зам. прокурор',
				isboss = true,
			    payment = 1500
            },
			['4'] = {
                name = 'Прокурор',
				isboss = true,
                payment = 1800
            },
			['5'] = {
                name = 'Кмет',
				isboss = true,
                payment = 2300
            },
        },
	},
	['lawyer'] = {
		label = 'Law Firm',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Associate',
                payment = 350
            },
        },
	},
	['reporter'] = {
		label = 'Репортер',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Журналист',
                payment = 359
            },
        },
	},
	['trucker'] = {
		label = 'Trucker',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 350
            },
        },
	},
	['tow'] = {
		label = 'Towing',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Driver',
                payment = 350
            },
        },
	},
	['garbage'] = {
		label = 'Garbage',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Collector',
                payment = 350
            },
        },
	},
	['vineyard'] = {
		label = 'Vineyard',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Picker',
                payment = 350
            },
        },
	},
    ['tuner'] = {
        label = 'Автосервиз',
        defaultDuty = false,
        offDutyPay = false,
        grades = {
            ['0'] = {
                name = 'Новобранец',
                payment = 450
            },
            ['1'] = {
                name = 'Напреднал',
                payment = 550
            },
            ['2'] = {
                name = 'Разбирач',
                isboss = false,
                payment = 650
            
            },
            ['3'] = {
                name = 'Зам. шеф',
                isboss = false,
                payment = 900
            },
            ['4'] = {
                name = 'Шеф',
                isboss = true,
                payment = 1200
            },
        },
    },
	['hotdog'] = {
		label = 'Hotdog',
		defaultDuty = true,
		offDutyPay = false,
		grades = {
            ['0'] = {
                name = 'Продавач',
                payment = 350
            },
        },
	},
}