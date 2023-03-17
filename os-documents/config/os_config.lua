Config = {}


-- MAIN THINGS (https://discord.gg/RKGDCWqb8b)
Config.OSCoreName = "QBCore"
Config.OSCommunityMenuKey = 311 -- This is "Del" button
Config.OSCommunityFont = 4 -- 4 is default
Config.OSCommunityLocale	= "os" -- os (https://discord.gg/RKGDCWqb8b)
Config.OSCommunityActionText = "FAMEORSHAME DOCUMENTS" -- (https://discord.gg/RKGDCWqb8b)

-- MORE THINGS (https://discord.gg/RKGDCWqb8b)
Config.OSr = 155
Config.OSg = 5
Config.OSb = 5
Config.OSscale = 0.4069
Config.OScol1 = 200
Config.OScol2 = 0
Config.OScol3 = 0
Config.OSWid = 0.50069
Config.OShei = 0.040000000069

-- ELECTIVES THINGS (https://discord.gg/RKGDCWqb8b)
Config.UseOSCustomFonts 	= false -- If you need custom font turn ON
Config.CustomOSFontFile 	= "greek" -- only if you turn custom fonts on.
Config.CustomOSFontId 	= "OpenSans" -- only if you turn custom fonts on.

-- OTHER THINGS (https://discord.gg/RKGDCWqb8b)
Config.OSCommunity = {
	["public"] ={
		{
		  headerTitle = "СВИДЕТЕЛСКИ ПОКАЗАНИЯ",
          headerSubtitle = "Официални свидетелски показания.",
          elements = {
			{ label = "ДАТА НА ПОПЪЛВАНЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "СВИДЕТЕЛСКИ ПОКАЗАНИЯ", type = "textarea", value = "", can_be_emtpy = false },
		  }
		},
		{
		  headerTitle = "ПОКУПКО/ПРОДАЖБА НА ПРЕВОЗНИ СРЕДСТВА",
		  headerSubtitle = "Документ за покупко/продажба на превозно средство.",
		  elements = {
			{ label = "ИМЕ НА НОВИЯ СОБСТВЕНИК", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ НА ПРЕВОЗНОТО СРЕДСТВО", type = "input", value = "", can_be_emtpy = false },
			{ label = "РЕГИСТРАЦИОНЕН НОМЕР", type = "input", value = "", can_be_emtpy = false },
			{ label = "ЦЕНА", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ ЗА ПРЕВОЗНОТО СРЕДСТВО", type = "textarea", value = "", can_be_emtpy = true },
		  }
		},
	},
	["police"] = {
	    {
		  headerTitle = "СВИДЕТЕЛСТВО ЗА СЪДИМОСТ",
		  headerSubtitle = "Официален документ за чисто съдебно минало.",
		  elements = {
			{ label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "С ТОЗИ ДОКУМЕНТ СЪДА ОБЯВЯВА ЧЕ ГРАЖДАНИНА ВПИСАН ПО ГОРЕ В ТОЗИ ДОКУМЕНТ, Е С ЧИСТО СЪДЕБНО МИНАЛО БЕЗ ПРОВИНЕНИЯ.", can_be_emtpy = false, can_be_edited = false },
		  }
		},
		{
		  headerTitle = "ЛИЦЕНЗ ЗА ОРЪЖИЕ",
		  headerSubtitle = "Специално разрешение за оръжие, предоставено от полицията.",
		  elements = {
			{ label = "ИМЕ НА ПРИТЕЖАТЕЛЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ НА ПРИТЕЖАТЕЛЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "ПОЛИЦИЯТА НА FAMEORSHAME ИЗДАВА НА ГРАЖДАНИНА ВПИСАН ПО ГОРЕ В ТОЗИ ДОКУМЕНТ, РАЗРЕШИТЕЛНО ЗА НОСЕНЕ НА ОГНЕСТРЕЛНО ОРЪЖИЕ, КОЕТО ЩЕ ВАЖИ ДО ДАТАТА НА ИЗТИЧАНЕ", can_be_emtpy = false },
		  }
		},
	},
	["state"] ={
		{
		  headerTitle = "СВИДЕТЕЛСТВО ЗА СЪДИМОСТ",
		  headerSubtitle = "Официален документ за чисто съдебно минало.",
		  elements = {
			{ label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "С ТОЗИ ДОКУМЕНТ СЪДА ОБЯВЯВА ЧЕ ГРАЖДАНИНА ВПИСАН ПО ГОРЕ В ТОЗИ ДОКУМЕНТ, Е С ЧИСТО СЪДЕБНО МИНАЛО БЕЗ ПРОВИНЕНИЯ.", can_be_emtpy = false, can_be_edited = false },
		  }
		},
		{
		  headerTitle = "УДОСТОВЕРЕНИЕ ЗА СОБСТВЕНОСТ",
		  headerSubtitle = "Официален документ с който да се докаже собствеността на имота.",
		  elements = {
			{ label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "АДРЕС НА ИМОТА", type = "input", value = "", can_be_empty = false },
			{ label = "ВАЛИДНО ОТ", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ ЗА ИМОТА", type = "textarea", value = "", can_be_emtpy = true },
		  }
		},
		{
		  headerTitle = "РАЗРЕШИТЕЛНО ЗА ХРАНИ И НАПИТКИ",
		  headerSubtitle = "Официален документ с който се разрешава продажбата на храни и напитки.",
		  elements = {
			{ label = "ИМЕ НА ФИРМАТА", type = "input", value = "", can_be_emtpy = false },
			{ label = "СОБСТВЕНИК", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДНО ОТ", type = "input", value = "", can_be_empty = false },
			{ label = "ВАЛИДНО ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "С ТОЗИ ДОКУМЕНТ СЪДА РАЗРЕШАВА ДА СЕ ПРОДАВАТ ХРАНИ И НАПИТКИ В ИМОТА ПОСОЧЕН ПО ГОРЕ.", can_be_emtpy = false, can_be_edited = false },
		  }
		},
		{
		  headerTitle = "ЗАПОВЕД ЗА АРЕСТ",
		  headerSubtitle = "Официална заповед за арест.",
		  elements = {
			{ label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДНА ОТ", type = "input", value = "", can_be_empty = false },
			{ label = "ПОДРОБНОСТИ ПО ЗАПОВЕДТА", type = "textarea", value = "", can_be_emtpy = true },
		  }
		},
		{
		  headerTitle = "ЗАПОВЕД ЗА ОБИСК",
		  headerSubtitle = "Официална заповед за обиск.",
		  elements = {
			{ label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДНА ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ ЗА ИМУЩЕСТВОТО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "С ТОЗИ ДОКУМЕНТ СЪДА РАЗРЕШАВА ОБИСК НА ДВИЖИМОТО И НЕДВИЖИМОТО ИМУЩЕСТВО ПРИНАДЛЕЖАЩО НА ЛИЦЕТО ВПИСАНО ПО ГОРЕ В ТОЗИ ДОКУМЕНТ, ОТ СТРАНА НА ПОЛИЦИЯТА НА CITY OF FAMEORSHAME.", can_be_emtpy = false, can_be_edited = false },
		  }
		},
		{
		  headerTitle = "ЗАПОВЕД ЗА ПОЛИЦЕЙСКА АКЦИЯ",
		  headerSubtitle = "Официална заповед за акция.",
		  elements = {
			{ label = "ИМЕНА ИЛИ ОРГАНИЗАЦИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ЗВЕНО НА ПОЛИЦИЯТА", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДНА ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "С ТОЗИ ДОКУМЕНТ СЪДА РАЗРЕШАВА АКЦИЯ ОТ СРЕШУ ЛИЦЕТО ИЛИ ОРГАНИЗАЦИЯТА ВПИСАНИ ПО ГОРЕ В ТОЗИ ДОКУМЕНТ, ОТ СТРАНА НА ЗВЕНОТО НА ПОЛИЦИЯТА НА CITY OF FAMEORSHAME ВПИСАНО ПО ГОРЕ В ТОЗИ ДОКЕУМТН.", can_be_emtpy = false, can_be_edited = false },
		  }
		},
		{
		  headerTitle = "ПРИЗОВКА ЗА СВИДЕТЕЛ",
		  headerSubtitle = "Официална призовка за свидетел на дело",
	      elements = {
		    { label = "ИМЕНА НА ГРАЖДАНИНА", type = "input", value = "", can_be_emtpy = false },
		    { label = "ДЕЛО №", type = "input", value = "", can_be_emtpy = false },
		    { label = "ДАТА НА ДЕЛОТО", type = "input", value = "", can_be_empty = false },
		    { label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГРАЖДАНИНЪТ ОПИСАН ПО ГОРЕ В ТОЗИ ДОКУМЕНТ СЕ ПРИЗОВАВА ДА СЕ ЯВИ НА ДАТАТА ОПИСАНА ПО ГОРЕ В СЪДЕБНАТА ЗАЛА В ОБЩИНАТА. ПРИ НЕЯВЯВАНЕ В СЪДА, ПОДЛЕЖИ НА ПАРИЧНА САНКЦИЯ", can_be_emtpy = false, can_be_edited = false },
		  }
		},
		{
		  headerTitle = "ПРИЗОВКА ЗА ОБВИНЯЕМ",
		  headerSubtitle = "Официална призовка за обвиняем на дело",
	      elements = {
		    { label = "ИМЕНА НА ГРАЖДАНИНА", type = "input", value = "", can_be_emtpy = false },
		    { label = "ДЕЛО №", type = "input", value = "", can_be_emtpy = false },
		    { label = "ДАТА НА ДЕЛОТО", type = "input", value = "", can_be_empty = false },
		    { label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГРАЖДАНИНЪТ ОПИСАН ПО ГОРЕ В ТОЗИ ДОКУМЕНТ СЕ ПРИЗОВАВА ДА СЕ ЯВИ НА ДАТАТА ОПИСАНА ПО ГОРЕ В СЪДЕБНАТА ЗАЛА В ОБЩИНАТА. ПРИ НЕЯВЯВАНЕ В СЪДА, ПОДЛЕЖИ НА ПАРИЧНА САНКЦИЯ", can_be_emtpy = false, can_be_edited = false },
		  }
		},
		{
		  headerTitle = "РЕГИСТРАЦИЯ НА ФИРМА",
		  headerSubtitle = "Официален документ за регистрация на фирма.",
		  elements = {
			{ label = "ИМЕ НА ФИРМАТА", type = "input", value = "", can_be_emtpy = false },
			{ label = "ИМЕ И ФАМИЛИЯ НА СОБСТВЕНИКА", type = "input", value = "", can_be_emtpy = false },
			{ label = "НАЧАЛЕН КАПИТАЛ НА ФИРМАТА", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ОТ", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ ЗА ФИРМАТА", type = "textarea", value = "", can_be_emtpy = true },
		  }
		},
		{
		  headerTitle = "ЗАЕМАНЕ НА ВРЕМЕННА ДЛЪЖНОСТ",
		  headerSubtitle = "Официален документ за заемане на временна длъжност.",
		  elements = {
			{ label = "ИМЕ НА ФИРМАТА", type = "input", value = "", can_be_emtpy = false },
			{ label = "ИМЕ И ФАМИЛИЯ НА РАБОТНИКА", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ОТ", type = "input", value = "", can_be_empty = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ПОВЕЧЕ ИНФОРМАЦИЯ", type = "textarea", value = "", can_be_emtpy = true },
		  }
		},
	},
	["cardealer"] = {
		{
		  headerTitle = "ПОКУПКО/ПРОДАЖБА НА ПРЕВОЗНИ СРЕДСТВА",
		  headerSubtitle = "Документ за покупко/продажба на превозно средство.",
		  elements = {
			{ label = "РЕГИСТРАЦИОНЕН НОМЕР", type = "input", value = "", can_be_emtpy = false },
			{ label = "ИМЕ НА ГРАЖДАНИНА", type = "input", value = "", can_be_emtpy = false },
			{ label = "ЦЕНА", type = "input", value = "", can_be_empty = false },
			{ label = "ДРУГА ИНФОРМАЦИЯ", type = "textarea", value = "", can_be_emtpy = true },
		  }
		}
	},
	["ambulance"] = {
		{
		  headerTitle = "МЕДИЦИНСКИ ДОКЛАД - ПАТОЛОГИЯ",
		  headerSubtitle = "Официален медицински доклад, предоставен от патолог.",
		  elements = {
			{ label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "С ТОЗИ ДОКУМЕНТ БОЛНИЦАТА ОБЯВЯВА ЧЕ ГРАЖДАНИНА ВПИСАН ПО ГОРЕ В ДОКУМЕНТА Е КЛИНИЧНО ЗДРАВ.", can_be_emtpy = false },
		  }
		},
		{
		  headerTitle = "СМЪРТЕН АКТ",
		  headerSubtitle = "Официален смъртен акт",
		  elements = {
			{ label = "ИМЕ НА ПОЧИНАЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ НА ПОЧИНАЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ДАТА И ЧАС НА СМЪРТА", type = "input", value = "", can_be_empty = false },
			{ label = "ОПИСАНИЕ НА СМЪРТНИЯ АКТ", type = "textarea", value = "", can_be_emtpy = true },
		  }
		},
		{
		  headerTitle = "МЕДИЦИНСКИ ДОКЛАД - ПСИХОЛОГИЯ",
		  headerSubtitle = "Официален медицински доклад, предоставен от психолог.",
		  elements = {
			{ label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "ГРАЖДАНИНЪТ БЕШЕ ПРЕГЛЕДАН ОТ ОТОРИЗИРАН ЗА ТОВА ЛЕКАР И Е ОПРЕДЕЛЕН ЗА ПСИХИЧНО ЗДРАВ ПО ОДОБРЕНИТЕ ПСИХОЛОГИЧНИ СТАНДАРТИ. НАСТОЯЩИЯ ДОКЛАД Е ВАЛИДЕН ДО УСТАНОВЕНАТА ДАТА В НЕГО.", can_be_emtpy = false },
		  }
		},
		{
		  headerTitle = "МЕДИЦИНСКИ ДОКЛАД - ОЧЕН СПЕЦИАЛИСТ",
		  headerSubtitle = "Официален медицински доклад, предоставен от очен специалист.",
		  elements = {
			{ label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "ГРАЖДАНИНЪТ БЕШЕ ПРЕГЛЕДАН ОТ ОТОРИЗИРАН ЗА ТОВА ЛЕКАР И Е С ПЕРФЕКТНО ЗРЕНИЕ УСТАНОВЕНО ПО ОДОБРЕНИТЕ ОЧНИ СТАНДАРТИ. НАСТОЯЩИЯ ДОКЛАД Е ВАЛИДЕН ДО УСТАНОВЕНАТА ДАТА В НЕГО.", can_be_emtpy = false },
		  }
		},
		{
		  headerTitle = "ЛИЦЕН ЗА УПОТРЕБА НА МАРИХУАНА",
		  headerSubtitle = "Official medical marijuana usage permit for citizens.",
		  elements = {
			{ label = "ИМЕ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "МЕДИЦИНСКИ БЕЛЕЖКИ", type = "textarea", value = "НА ГРАЖДАНИНА СЕ ИЗДАВА ТОЗИ ЛИЦЕНЗ ЗА УПОТРЕБА НА МАРИХУАНА С МЕДИЦИНСКА ЦЕЛ В РАМКИТАНА 100ГР.", can_be_emtpy = false, can_be_edited = false },
		  }
		},
	},
	["state"] = {
		{
		  headerTitle = "ДОГОВОР ЗА ПРАВНИ УСЛУГИ",
		  headerSubtitle = "Договор за правни услуги, предоставени от адвокат.",
		  elements = {
			{ label = "ИМЕ НА ГРАЖДАНИНА", type = "input", value = "", can_be_emtpy = false },
			{ label = "ФАМИЛИЯ НА ГРАЖДАНИНА", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "ТОЗИ ДОКУМЕНТ Е ДОКАЗАТЕЛСТВО ЗА ЗАКОННО ПРЕДСТАВИТЕЛСТВО И ПОКРИТИЕ НА АРОРМИНИРАНИЯ ГРАЖДАНИН. ЮРИДИЧЕСКИТЕ УСЛУГИ СА ВАЛИДНИ ДО АФОРМЕНТИРАНАТА ДАТА НА ИЗТИЧАНЕ.", can_be_emtpy = false },
		  }
		},
	},
	["autoexotic"] = {
		{
		  headerTitle = "ГОДИШЕН ТЕХНИЧЕСКИ ПРЕГЛЕД",
		  headerSubtitle = "Документ за преминат успешно годишен технически преглед",
		  elements = {
			{ label = "СОБСТВЕНИК", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ И РЕГ. НОМЕР НА МПС", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГОРЕПОСОЧЕНОТО МОТОРНО ПРЕВОЗНО СРЕДСТВО Е ПРЕМИНАЛО УСПЕШНО ГОДИШНИЯ ТЕХНИЧЕСКИ ПРЕГЛЕД В AUTOEXOTIC СЕРВИЗ", can_be_emtpy = false },
		  }
		},
	},
	["hayesauto"] = {
		{
		  headerTitle = "ГОДИШЕН ТЕХНИЧЕСКИ ПРЕГЛЕД",
		  headerSubtitle = "Документ за преминат успешно годишен технически преглед",
		  elements = {
			{ label = "СОБСТВЕНИК", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ И РЕГ. НОМЕР НА МПС", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГОРЕПОСОЧЕНОТО МОТОРНО ПРЕВОЗНО СРЕДСТВО Е ПРЕМИНАЛО УСПЕШНО ГОДИШНИЯ ТЕХНИЧЕСКИ ПРЕГЛЕД В HAYES AUTO СЕРВИЗ", can_be_emtpy = false },
		  }
		},
	},
	["drauto"] = {
		{
		  headerTitle = "ГОДИШЕН ТЕХНИЧЕСКИ ПРЕГЛЕД",
		  headerSubtitle = "Документ за преминат успешно годишен технически преглед",
		  elements = {
			{ label = "СОБСТВЕНИК", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ И РЕГ. НОМЕР НА МПС", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГОРЕПОСОЧЕНОТО МОТОРНО ПРЕВОЗНО СРЕДСТВО Е ПРЕМИНАЛО УСПЕШНО ГОДИШНИЯ ТЕХНИЧЕСКИ ПРЕГЛЕД В DR. AUTO СЕРВИЗ", can_be_emtpy = false },
		  }
		},
	},
	["drauto"] = {
		{
		  headerTitle = "ГОДИШЕН ТЕХНИЧЕСКИ ПРЕГЛЕД",
		  headerSubtitle = "Документ за преминат успешно годишен технически преглед",
		  elements = {
			{ label = "СОБСТВЕНИК", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ И РЕГ. НОМЕР НА МПС", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГОРЕПОСОЧЕНОТО МОТОРНО ПРЕВОЗНО СРЕДСТВО Е ПРЕМИНАЛО УСПЕШНО ГОДИШНИЯ ТЕХНИЧЕСКИ ПРЕГЛЕД В DR. AUTO СЕРВИЗ", can_be_emtpy = false },
		  }
		},
	},
	["drauto"] = {
		{
		  headerTitle = "ГОДИШЕН ТЕХНИЧЕСКИ ПРЕГЛЕД",
		  headerSubtitle = "Документ за преминат успешно годишен технически преглед",
		  elements = {
			{ label = "СОБСТВЕНИК", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ И РЕГ. НОМЕР НА МПС", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГОРЕПОСОЧЕНОТО МОТОРНО ПРЕВОЗНО СРЕДСТВО Е ПРЕМИНАЛО УСПЕШНО ГОДИШНИЯ ТЕХНИЧЕСКИ ПРЕГЛЕД В DR. AUTO СЕРВИЗ", can_be_emtpy = false },
		  }
		},
	},
	["mechanic"] = {
		{
		  headerTitle = "ГОДИШЕН ТЕХНИЧЕСКИ ПРЕГЛЕД",
		  headerSubtitle = "Документ за преминат успешно годишен технически преглед",
		  elements = {
			{ label = "СОБСТВЕНИК", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ И РЕГ. НОМЕР НА МПС", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГОРЕПОСОЧЕНОТО МОТОРНО ПРЕВОЗНО СРЕДСТВО Е ПРЕМИНАЛО УСПЕШНО ГОДИШНИЯ ТЕХНИЧЕСКИ ПРЕГЛЕД В GROOVE CUSTOMS", can_be_emtpy = false },
		  }
		},
	},
	["harmonyrepair"] = {
		{
		  headerTitle = "ГОДИШЕН ТЕХНИЧЕСКИ ПРЕГЛЕД",
		  headerSubtitle = "Документ за преминат успешно годишен технически преглед",
		  elements = {
			{ label = "СОБСТВЕНИК", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ И РЕГ. НОМЕР НА МПС", type = "input", value = "", can_be_emtpy = false },
			{ label = "ВАЛИДЕН ДО", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "ГОРЕПОСОЧЕНОТО МОТОРНО ПРЕВОЗНО СРЕДСТВО Е ПРЕМИНАЛО УСПЕШНО ГОДИШНИЯ ТЕХНИЧЕСКИ ПРЕГЛЕД В HARMONY REPAIR", can_be_emtpy = false },
		  }
		},
	},
	["harmonyrepair"] = {
		{
		  headerTitle = "ДОГОВОР ЗА ПОКУПКА НА ДВИГАТЕЛ ЗА МПС",
		  headerSubtitle = "Документ удостоверяващ собствеността на двигателя в МПС-то",
		  elements = {
			{ label = "ИМЕНА", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ ДВИГАТЕЛ", type = "input", value = "", can_be_emtpy = false },
			{ label = "МОДЕЛ МПС", type = "input", value = "", can_be_empty = false },
			{ label = "ИНФОРМАЦИЯ", type = "textarea", value = "С ТОЗИ ДОКУМЕНТ УДОСТОВЕРЯВАМ ЧЕ ГОРЕПОСОЧЕНИЯ ДВИГАТЕЛ Е ЗАКУПЕН И ПОСТАВЕН ОТ HARMONY REPAIR", can_be_emtpy = false },
		  }
		},
	},
}