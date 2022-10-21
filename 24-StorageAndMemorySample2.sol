//SPDX-License-Identifier: MIT
pragma solidity >= 0.8.0;

contract StorageAndMemorySample {
    struct User {
        string name;
    }

    uint8[2] public s_numbers; //storage da saklanır
    mapping(uint8 => User) public s_users; //storage da saklanır

    constructor() {
        s_numbers[0] = 1;
        s_numbers[1] = 2;
        s_users[1] = User("engin");
    }

    function StorageAndMemoryTest() public {
        //storage ıcın ornekler 
        uint8[2] storage x = s_numbers; //x degiskenine s_numbers storage referansı atanır.
        x[0] = 100; // yapılan degisiklikler s_numbers üzerinde olur.
        //mapping ornegi
        mapping(uint8 => User) storage y = s_users; //y degiskenine s_users storage referansı atanır. 
        y[1] = User("user 1"); //yapılan degisiklikler s_users uzerinde yapılmıs olur.
        y[2] = User("user 2"); //yapılan degisiklikler s_users uzerinde yapılmıs olur.
        //mapping icin baska bir ornek
        User storage z = s_users[1]; //z degiskenine s_users[1] storage referansı atanır.
        z.name = "user 3"; //yapılan degisiklikler s_users[1] uzerinde yapılmıs olur.

        //memory icin ornekler
        uint8[2] memory mx = s_numbers; //mx degiskenine s_numbers storage degiskeni değeri kopyalanır.
        mx[0] = 200; // yapılan degisiklikler sadece mx üzerinde olur.

        User memory mz = s_users[1]; //s_users[1] storage'daki user değeri mz'ye kopyalanır.
        mz.name = "user 4"; //yapılan degisiklikler sadece mz uzerinde yapılmıs olur.
    }

}
