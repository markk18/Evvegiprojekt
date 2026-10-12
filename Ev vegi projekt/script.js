const db = {
            hero: {
                title: "",
                rating: "",
                time: "",
                image: ""
            },
            recipes: [
                { id: 1, title: "", category: "", desc: "", time: "45 p", rating: "4,8", image: "" },
                { id: 2, title: "", category: "", desc: "", time: "45 p", rating: "4,8", image: "" },
                { id: 3, title: "", category: "", desc: "", time: "45 p", rating: "4,8", image: "" }
            ],
            categories: [
                { name: "☀️ Reggeli", bg: "bg-[#F7F4EE]", hover: "hover:bg-[#EFECE6]", text: "text-stone-900" },
                { name: "🍲 Ebéd", bg: "bg-[#F7F4EE]", hover: "hover:bg-[#EFECE6]", text: "text-stone-900" },
                { name: "🥗 Vacsora", bg: "bg-[#E8EFE9]", hover: "hover:bg-[#d9e6db]", text: "text-emerald-900" }
            ],
            news: [
                { title: "", sub: "", time: "", image: "" },
                { title: "", sub: "", time: "", image: "" }
            ]
        };

        // Kiemelt Banner renderelése
        function renderHero() {
            document.getElementById('heroContainer').innerHTML = `
                <div class="relative rounded-3xl overflow-hidden shadow-md bg-white border border-stone-100 group cursor-pointer">
                    <div class="h-64 sm:h-80 md:h-96 w-full overflow-hidden relative">
                        <img src="${db.hero.image}" class="w-full h-full object-cover group-hover:scale-105 transition duration-500">
                        <div class="absolute inset-0 bg-gradient-to-t from-black/70 via-black/20 to-transparent"></div>
                    </div>
                    <div class="absolute bottom-0 left-0 right-0 p-6 sm:p-8 flex flex-col sm:flex-row sm:items-end justify-between gap-4 text-white">
                        <h1 class="font-serif text-2xl sm:text-4xl font-bold tracking-tight">${db.hero.title}</h1>
                        <div class="flex items-center gap-4 bg-black/40 backdrop-blur-md px-4 py-2.5 rounded-full text-sm font-medium border border-white/10">
                            <span class="text-amber-300"><i class="fa-solid fa-star"></i> ${db.hero.rating}</span>
                            <span class="text-white/40">•</span>
                            <span class="text-stone-200"><i class="fa-regular fa-clock"></i> ${db.hero.time}</span>
                        </div>
                    </div>
                </div>
            `;
        }

        // Recept kártyák renderelése
        function renderRecipes(items) {
            const grid = document.getElementById('recipeGrid');
            grid.innerHTML = '';
            
            if (items.length === 0) {
                grid.innerHTML = '<p class="text-stone-500 text-sm col-span-full">Nincs találat a keresésre.</p>';
                return;
            }

            items.forEach(r => {
                grid.innerHTML += `
                    <div class="bg-white rounded-2xl overflow-hidden shadow-sm hover:shadow-md border border-stone-100 transition flex flex-col justify-between group cursor-pointer">
                        <div>
                            <div class="h-44 w-full overflow-hidden relative">
                                <img src="${r.image}" class="w-full h-full object-cover group-hover:scale-105 transition duration-300">
                            </div>
                            <div class="p-4">
                                <h3 class="font-serif font-bold text-lg text-stone-900 mb-1">${r.title}</h3>
                                <p class="text-stone-500 text-xs line-clamp-2">${r.desc}</p>
                            </div>
                        </div>
                        <div class="px-4 pb-4 pt-2 flex items-center justify-between text-xs text-stone-500 border-t border-stone-50">
                            <span><i class="fa-regular fa-clock"></i> ${r.time}</span>
                            <span class="text-amber-500 font-semibold"><i class="fa-solid fa-star"></i> ${r.rating}</span>
                        </div>
                    </div>
                `;
            });
        }

        // Kategóriák renderelése
        function renderCategories() {
            const container = document.getElementById('categoryContainer');
            db.categories.forEach(c => {
                container.innerHTML += `
                    <a href="#" class="flex items-center justify-between p-3 rounded-xl ${c.bg} ${c.hover} transition font-medium text-sm ${c.text}">
                        <span>${c.name}</span>
                        <i class="fa-solid fa-chevron-right text-xs text-stone-400"></i>
                    </a>
                `;
            });
        }

        // Hírek renderelése
        function renderNews() {
            const container = document.getElementById('newsContainer');
            db.news.forEach(n => {
                container.innerHTML += `
                    <div class="flex items-center gap-3 group cursor-pointer">
                        <div class="w-16 h-16 rounded-xl overflow-hidden flex-shrink-0">
                            <img src="${n.image}" class="w-full h-full object-cover group-hover:scale-105 transition">
                        </div>
                        <div class="flex-grow min-w-0">
                            <h4 class="font-serif font-bold text-sm text-stone-900 truncate">${n.title}</h4>
                            <p class="text-xs text-stone-400 truncate">${n.sub}</p>
                            <span class="text-[11px] text-stone-500 mt-1 block">${n.time}</span>
                        </div>
                    </div>
                `;
            });
        }

        // Kereső logika
        document.getElementById('searchInput').addEventListener('input', (e) => {
            const query = e.target.value.toLowerCase();
            const filtered = db.recipes.filter(r => r.title.toLowerCase().includes(query) || r.desc.toLowerCase().includes(query));
            renderRecipes(filtered);
        });

        // Szűrő gombok logikája
        function filterBy(category) {
            if (category === 'összes') {
                renderRecipes(db.recipes);
            } else {
                const filtered = db.recipes.filter(r => r.category === category);
                renderRecipes(filtered);
            }
        }

        // Oldal betöltésekor futó inicializálás
        window.addEventListener('DOMContentLoaded', () => {
            renderHero();
            renderRecipes(db.recipes);
            renderCategories();
            renderNews();
        });