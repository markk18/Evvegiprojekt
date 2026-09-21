Íme a főzős oldal (recept- és gasztro-webalkalmazás) műszaki és használati dokumentációjának vázlata, amelyet közvetlenül felhasználhatsz a projektcsomagodhoz.


Műszaki és Használati Dokumentáció: GasztroKlub Webalkalmazás

1. A szoftver célja

A szoftver célja egy modern, felhasználóbarát webes platform biztosítása, amely lehetővé teszi a felhasználók számára a recepek böngészését, keresését, mentését és megosztását.

Fő üzleti és funkcionális célok:**

* **Tartalomkezelés:** Gyors és egyszerű receptfeltöltés, kategóriákba rendezés (pl. diéta, elkészítési idő, nehézség szerint).
* **Interaktivitás:** Felhasználói értékelések, hozzászólások és saját „receptkönyv” (kedvencek) kezelése.
* **Intelligens funkciók:** Adagmennyiség-számítás a megadott személyek száma alapján, valamint hozzávalók alapú receptkeresés ("Mi van a hűtőmben?").

2. Komponensek technikai leírása

A rendszer moduláris, háromrétegű (Client-Server-Database) architektúrára épül.

2.1. Frontend (Kliensoldal)

* **Technológia:** ReactJS / Next.js (vagy HTML5, CSS3/Tailwind CSS, JavaScript ES6+).
* **Szerep:** A felhasználói felület (UI) és a felhasználói élmény (UX) biztosítása.
* **Főbb modulok:**
* **Navigációs és Kereső modul:** Dinamikus szűrőkkel (gluténmentes, vegán stb.) és azonnali találati listával.
* **Receptmegjelenítő modul:** Dinamikus adagszámítóval és lépésről lépésre követhető főzési móddal.
* **Felhasználói Fiók modul:** Regisztráció, profilkezelés, mentett receptek.



2.2. Backend (Szerveroldal)

* **Technológia:** Node.js (Express) / Python (FastAPI/Django) / C# (.NET Core).
* **Szerep:** Az üzleti logika megvalósítása, az API végpontok biztosítása és az adatok feldolgozása.
* **Főbb modulok:**
* **REST API / GraphQL interfész:** Kommunikáció a frontend és a backend között.
* **Hitelesítési modul (Auth):** JWT (JSON Web Token) alapú biztonságos bejelentkezés és jogosultságkezelés.
* **Média-kezelő modul:** Ételképek és videók feltöltése, átméretezése és optimalizálása (pl. Cloudinary vagy helyi tárhely segítségével).



2.3. Adatbázis (Database)

* **Technológia:** PostgreSQL (relációs) vagy MongoDB (NoSQL).
* **Szerep:** A strukturált adatok (felhasználók, receptek, hozzávalók, értékelések) biztonságos tárolása.
* **Szerkezet:**
* `Users`: Felhasználói adatok, jelszóhashek, jogosultságok.
* `Recipes`: Cím, leírás, elkészítési idő, nehézség, kép URL-ek.
* `Ingredients`: Hozzávalók törzsadatbázisa és mértékegységei.
* `Reviews`: Értékelések és kommentek kapcsolótáblái.


3. A működés műszaki feltételei

3.1. Szerveroldali feltételek (Infrastruktúra)

* **Operációs rendszer:** Linux (Ubuntu Server 22.04 LTS ajánlott) vagy Docker konténer környezet.
* **Futztatókörnyezet:** Node.js (v18+) / Python (3.10+) / .NET 8.
* **Adatbázisszerver:** PostgreSQL 14+ vagy MongoDB 6.0+.
* **Webszerver / Reverse Proxy:** Nginx vagy Apache (SSL/TLS tanúsítvánnyal, HTTPS protokollal).
* **Minimum hardverigény:**
* CPU: 2 vCPU
* RAM: 4 GB
* Háttértár: 20 GB SSD (a feltöltött képek mennyiségétől függően bővítendő).



3.2. Kliensoldali feltételek (Felhasználó)

* **Ezközök:** Asztali számítógép, tablet vagy okostelefon (reszponzív kialakítás).
* **Böngésző:** Bármely modern webbögésző naprakész verziója (Google Chrome, Mozilla Firefox, Safari, Microsoft Edge).
* **Hálózat:** Aktív internetkapcsolat (szélessávú hálózat ajánlott a képek gyors betöltéséhez).

4. A szoftver használatának rövid bemutatása

1. **Böngészés és Keresés:** Nincs szükség regisztrációra.
A főoldalra érkezve a felhasználó a keresősáv segítségével rákereshet konkrét ételekre, vagy szűrhet kategóriák (pl. előétel, főétel, desszert) és étkezési preferenciák szerint.


2. **Főzés mód és Adagbeállítás:** Interaktív receptoldal.
A recept kiválasztása után a felhasználó átállíthatja az adagok számát (pl. 2 főről 4 főre), amire a rendszer automatikusan újraszámolja a hozzávalók mennyiségét. A lépésről lépésre útmutató végigvezeti az elkészítésen.


3. **Bejelentkezés és Interakció:** Regisztrált funkciók.
A „Bejelentkezés” gombra kattintva a megadott e-mail címmel és jelszóval léphet be a felhasználó. Bejelentkezés után a receptek a szív ikonra kattintva elmenthetők a személyes kedvencek közé, vagy értékelhetők (1–5 csillag) és véleményezhetők.


4. **Saját recept feltöltése:** Tartalomkészítés.
A „Recept hozzáadása” menüpontban a felhasználó megadhatja az étel nevét, leírását, hozzávalóit (mennyiséggel és mértékegységgel), feltölthet egy fotót, majd a „Közzététel” gombbal publikálhatja azt.


