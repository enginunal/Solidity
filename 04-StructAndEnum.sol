// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract EnumsSample {
    enum MesaiGunleri {
        Pazartesi, 
        Sali, 
        Carsamba, 
        Persembe, 
        Cuma
    }
    
    struct Kisi {
        string ad;
        string soyad;
        uint yas;
    }

    struct Personel {
        Kisi kisi;
        string not;
        MesaiGunleri[] mesaiGunleri;
    }
    
    Personel public personel;

    constructor() {
        personel.kisi.ad = "ad";
        personel.kisi.yas = 25;
        personel.not = "deneme";
        personel.mesaiGunleri.push(MesaiGunleri.Carsamba);
        personel.mesaiGunleri.push(MesaiGunleri.Cuma);
    }

    function getMesaiGunleri() public  view returns (MesaiGunleri[] memory) {
        return personel.mesaiGunleri;
    }

}
