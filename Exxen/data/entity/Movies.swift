//
//  movies.swift
//  Exxen
//
//  Created by Öznur Ölçek on 8.08.2023.
//

import Foundation

class MovieData {
    var sectionType: String?
    var movie: [Movies]?
    
    init() {
        
    }
    
    init(sectionType: String, movie: [Movies]) {
        self.sectionType = sectionType
        self.movie = movie
    }
}

class Movies {
    var name: String?
    var imageName: String?
    
    init() {
        
    }
    
    init(name: String, imageName: String) {
        self.name = name
        self.imageName = imageName
    }
}

var movieData: [MovieData] = [
    MovieData(sectionType: "Hemen İzle", movie: [
        Movies(name: "Gibi", imageName: "gibi"),
        Movies(name: "Konuşanlar", imageName: "konusanlar"),
        Movies(name: "O Ses Türkiye Rap", imageName: "osesturkiyerap"),
        Movies(name: "Sizi Dinliyorum", imageName: "sizidinliyorum"),
        Movies(name: "Leyla ile Mecnun", imageName: "leylailemecnun"),
        Movies(name: "Hükümsüz", imageName: "hukumsuz"),
        Movies(name: "Aşk Kumardır", imageName: "askkumardir"),
        Movies(name: "Sadece Arkadaşız", imageName: "sadecearkadasiz"),
        Movies(name: "Tolgshow Filtresiz", imageName: "tolgshowfiltresiz")
    ]),
    MovieData(sectionType: "Öne Çıkanlar", movie: [
        Movies(name: "Leyla ile Mecnun", imageName: "leylailemecnun"),
        Movies(name: "Konuşanlar", imageName: "konusanlar"),
        Movies(name: "O Ses Türkiye Rap", imageName: "osesturkiyerap"),
        Movies(name: "Gibi", imageName: "gibi"),
        Movies(name: "Tolgshow Filtresiz", imageName: "tolgshowfiltresiz"),
        Movies(name: "Türkiye'deki Seri Katiller", imageName: "turkiyedekiserikatiller"),
        Movies(name: "Sadece Arkadaşız", imageName: "sadecearkadasiz"),
        Movies(name: "Aşk Kumardır", imageName: "askkumardir"),
        Movies(name: "Nusaybin Cinleri", imageName: "nusaybincinleri"),
        Movies(name: "Olağan Şüpheliler", imageName: "olagansupheliler"),
        Movies(name: "Katarsis", imageName: "katarsis"),
        Movies(name: "Ölüm Zamanı", imageName: "olumzamani"),
        Movies(name: "Stand-Up Evreni", imageName: "standupevreni"),
        Movies(name: "Hükümsüz", imageName: "hukumsuz"),
    ]),
    MovieData(sectionType: "Diziler", movie: [
        Movies(name: "Vahşi Şeyler", imageName: "vahsiseyler"),
        Movies(name: "İlginç Bazı Olaylar", imageName: "ilgincbaziolaylar"),
        Movies(name: "Sadece Arkadaşız", imageName: "sadecearkadasiz"),
        Movies(name: "Sihirli Annem", imageName: "sihirliannem"),
        Movies(name: "Adım Başı Kafe", imageName: "adimbasikafe"),
        Movies(name: "Şeref Bey", imageName: "serefbey"),
        Movies(name: "Sizi Dinliyorum", imageName: "sizidinliyorum"),
        Movies(name: "Leyla ile Mecnun", imageName: "leylailemecnun"),
        Movies(name: "Gibi", imageName: "gibi"),
        Movies(name: "Olağan Şüheliler", imageName: "olagansupheliler"),
        Movies(name: "Hükümsüz", imageName: "hukumsuz"),
        Movies(name: "Öğrenci Evi", imageName: "ogrencievi"),
        Movies(name: "İşte Bu Benim Masalım", imageName: "istebubenimmasalim"),
        Movies(name: "Aşk Kumardır", imageName: "askkumardir"),
        Movies(name: "Ölüm Zamanı", imageName: "olumzamani"),
        Movies(name: "Yetiş Zeynep", imageName: "yetiszeynep")
    ]),
    MovieData(sectionType: "Reality", movie: [
        Movies(name: "O Ses Türkiye Rap", imageName: "osesturkiyerap"),
        Movies(name: "MasterChef Junior", imageName: "masterchefjunior"),
        Movies(name: "Nasıl Zayıflarım?", imageName: "nasilzayiflarim"),
        Movies(name: "Büyük Değişim", imageName: "buyukdegisim"),
        Movies(name: "Sürprizimiz Var", imageName: "surprizimizvar"),
        Movies(name: "No Limit", imageName: "nolimit"),
        Movies(name: "Survivor Seçmeler", imageName: "survivorsecmeler"),
        Movies(name: "Katarsis", imageName: "katarsis"),
        Movies(name: "Garaj", imageName: "garaj"),
        Movies(name: "Fight Club", imageName: "fightclub"),
        Movies(name: "Şanslı mı? Şanssız mı?", imageName: "sanslimi"),
        Movies(name: "Benim İçin Yap", imageName: "benimicinyap"),
        Movies(name: "Survivor Exxen Cup", imageName: "survivorcup"),
        Movies(name: "Akıl Oyunları", imageName: "akiloyunlari"),
        Movies(name: "Hayalimdeki Düğün", imageName: "hayalimdekidugun")
    ]),
    MovieData(sectionType: "Belgeseller", movie: [
        Movies(name: "Esnaf", imageName: "esnaf"),
        Movies(name: "Türkiye'deki Seri Katiller", imageName: "turkiyedekiserikatiller"),
        Movies(name: "103 Gol", imageName: "103gol"),
        Movies(name: "Yazgı", imageName: "yazgı"),
        Movies(name: "2008 Milli Takım Hikayesi", imageName: "millitakim"),
        Movies(name: "Cadde Cadde İstanbul", imageName: "caddecaddeistanbul"),
        Movies(name: "Tosuncuk", imageName: "tosuncuk"),
        Movies(name: "Ohash", imageName: "ohash"),
        Movies(name: "Nusaybin Cinleri", imageName: "nusaybincinleri"),
        Movies(name: "Ayla Belgeseli", imageName: "ayla"),
        Movies(name: "Hayaller Gerçekler", imageName: "hayallergercekler"),
        Movies(name: "Arabeskin Aşık Kadınları", imageName: "arabeskinasikkadinlari")
        
    ])
]
