const { ref } = Vue

// Personalize o idioma dos menus de diálogo e carrosséis aqui

const load = Vue.createApp({
    setup () {
        return {
            CarouselText1: 'Você pode adicionar/remover itens, veículos, empregos e gangues através da pasta shared.',
            CarouselSubText1: 'Foto capturada por: Markyoo#8068',
            CarouselText2: 'Adicionar dados adicionais do jogador pode ser feito modificando o arquivo qb-core player.lua.',
            CarouselSubText2: 'Foto capturada por: ihyajb#9723',
            CarouselText3: 'Todos os ajustes específicos do servidor podem ser feitos nos arquivos config.lua em toda a build.',
            CarouselSubText3: 'Foto capturada por: FLAPZ[INACTIV]#9925',
            CarouselText4: 'Para suporte adicional, junte-se à nossa comunidade em discord.gg/6qKasA3Jgk',
            CarouselSubText4: 'Foto capturada por: Robinerino#1312',

            DownloadTitle: 'Baixando o Servidor QBCore Clean da New Wave',
            DownloadDesc: "Aguarde enquanto começamos a baixar todos os recursos/arquivos necessários para jogar no Servidor QBCore. \n\nApós o download ser concluído com sucesso, você será colocado no servidor e esta tela desaparecerá. Por favor, não saia ou desligue seu PC.",

            SettingsTitle: 'Configurações',
            AudioTrackDesc1: 'Quando desativado, a faixa de áudio atual será parada.',
            AutoPlayDesc2: 'Quando desativado, as imagens do carrossel pararão de alternar e permanecerão na última exibida.',
            PlayVideoDesc3: 'Quando desativado, o vídeo será pausado e permanecerá parado.',

            KeybindTitle: 'Teclas Padrão',
            Keybind1: 'Abrir Inventário',
            Keybind2: 'Alternar Proximidade',
            Keybind3: 'Abrir Celular',
            Keybind4: 'Alternar Cinto de Segurança',
            Keybind5: 'Abrir Menu de Alvo',
            Keybind6: 'Menu Radial',
            Keybind7: 'Abrir Menu Hud',
            Keybind8: 'Falar no Rádio',
            Keybind9: 'Abrir Placar',
            Keybind10: 'Travas do Veículo',
            Keybind11: 'Alternar Motor',
            Keybind12: 'Emote Apontar',
            Keybind13: 'Slots de Teclas',
            Keybind14: 'Emote Mãos para Cima',
            Keybind15: 'Usar Slots de Item',
            Keybind16: 'Controle de Cruzeiro',

            firstap: ref(true),
            secondap: ref(true),
            thirdap: ref(true),
            firstslide: ref(1),
            secondslide: ref('1'),
            thirdslide: ref('5'),
            audioplay: ref(true),
            playvideo: ref(true),
            download: ref(true),
            settings: ref(false),
        }
    }
})

load.use(Quasar, { config: {} })
load.mount('#loading-main')

var audio = document.getElementById("audio");
audio.volume = 0.05;

function audiotoggle() {
        var audio = document.getElementById("audio");
        if (audio.paused) {
                audio.play();
        } else {
                audio.pause();
        }
}

function videotoggle() {
        var video = document.getElementById("video");
        if (video.paused) {
                video.play();
        } else {
                video.pause();
        }
}

let count = 0;
let thisCount = 0;

const handlers = {
        startInitFunctionOrder(data) {
                count = data.count;
        },

        initFunctionInvoking(data) {
                document.querySelector(".thingy").style.left = "0%";
                document.querySelector(".thingy").style.width = (data.idx / count) * 100 + "%";
        },

        startDataFileEntries(data) {
                count = data.count;
        },

        performMapLoadFunction(data) {
                ++thisCount;

                document.querySelector(".thingy").style.left = "0%";
                document.querySelector(".thingy").style.width = (thisCount / count) * 100 + "%";
        },
};

window.addEventListener("message", function (e) {
        (handlers[e.data.eventName] || function () {})(e.data);
});
