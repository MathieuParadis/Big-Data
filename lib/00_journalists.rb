#Avec ton groupe, vous avez entendu parler d'un concept qui marche bien nommé le Big Data. 
#Vous vous êtes chauffés pour vous lancer dedans et proposer des prestations de conseil facturées 
#à des prix indécents. Grâce à vos super compétences en réalisation de Landing Pages, 
#vous avez déjà votre premier client : une entreprise de Growth Hacking. 
#Cette dernière a obtenu une liste de plusieurs centaines de comptes Twitter qu'ils voudraient analyser.

#Voici un array de handle Twitter (l'équivalent d'un nom de login chez Twitter) de journalistes:
#À partir de cette array, code un programme ruby qui répondra aux questions suivantes :

#Combien y a-t-il de handle dans cette array ?
#Quel est le handle le plus court de cette liste ?
#Combien y-a-t'il de handle contenant 5 caractères (le @ ne compte pas pour un caractère)
#Combien commencent par une majuscule (première lettre juste après le @) ?
#Trie la liste de handle par ordre alphabétique.
#Trie la liste de handle par taille des handles (les plus petits en premiers, les plus grands après)
#Quelle est la position dans l'array de la personne @epenser ?
#Sors-moi une répartition des handle par taille de ces derniers (nombre de handle avec 1 caractère, 
#  nombre de handle avec 2 caractères, nombre de handle avec 3 caractères, etc)

#Si tu as bien compris, quand tu lances le script, les réponses aux questions s'affichent sur ton écran 
#de Terminal via des puts. N'hésite pas à ajouter un peu de pep’s à ton programme en écrivant des phrases, 
#en ajoutant des blagues, voir en faisant un menu (pour les plus chauds) où l'utilisateur peut choisir, 
#dans une liste, la question à laquelle le programme va répondre.

handles = ["@jcunniet","@PaulLampon","@Aziliz31","@ssoumier","@marionsouzeau","@gaellombart","@bendarag","@AurelieLebelle","@julienduffe","@thomaspoupeau","@LilyRossignol","@ClairGuedon","@stephanieauguy","@claw_prolongeau","@_JulieMenard","@LColcomb","@Zlauwereys","@MeLonguet","@DorotheeLN","@NolwennCosson","@ADaboval","@Remibaldy","@bderveaux","@amandechap","@ELODIESOULIE","@nbongarcon","@HeloAb","@Panamorama","@gregplou","@BenoitBerthe","@LauraBruneau89","@Anthony_Lieures","@Sharonwaj","@mcsonkin","@pverduzier","@emiliel3","@Julien_MARION","@SophiFay","@bdelombre","@annalecerf","@AdriaBudry","@DejNikolic","@iJaffre","@CyrusleVirus","@GPardigon","@e_vallerey","@IsabelleSouquet","@AudeDavidRossi","@Yoann_Pa","@CeliaPenavaire","@perraultvincent","@cboulate","@JustineWeyl","@Paulinejacot","@juliechab","@aslechevallier","@phnou","@Seb_Pommier","@Alex_Bensaid","@GuillaumeGaven","@annelaurechouin","@Oliviader","@guerricp","@JMMarchaut","@cyceron","@gregory_raymond","@vhunsinger","@l_peillon","@fannyguinochet","@EAssayag","@KibweAdom","@YvonHerry","@JohanGarciajg","@saidlabidi","@lauranneprov","@LeaDavy","@francois_remy","@CGuicheteau","@FloMaillet","@m_perroud","@oBrunet_TSMF","@MoonVdc","@jc2taille","@NellyMoussu","@VirginK","@b_misa","@FabriceCouste","@barbara_prose","@lelia2m","@brunoaskenazi","@laurenechamp","@ysisbox","@juliengagliardi","@PierreLel","@kdeniau","@_TerraInc","@DominicArpin","@antoinfonteneau","@nanotousch","@jb_roch","@YaniKhezzar","@Anne_Bechet","@NCapart","@SamyBenNaceur","@Joumany","@Julietteraynal","@TGiraudet","@SaraTanit","@HappeFrederic","@antoinellorca","@michelpicot","@Sev_Ryne","@bobdobolino","@murdever","@YGrandmontagne","@Mnyo","@EdKOSCIANSKI","@tnoisette","@jankari","@delbello_rom","@rflechaux","@NadiaSorelli","@IT_Digital","@abarbaux","@PhilippeLeroy","@schaptal","@marionspee","@lisavignoli","@ChloeAeberhardt","@MartineJacot","@JuliaPascualita","@curieusedetout","@sgraveleau","@bif_o","@ElisaPineau","@zinebdryef","@apiquard","@pierrehaski","@StephanieDelmas","@Blandine_Garot","@vergara_i","@evan_lebastard","@SophieVclt","@OlivierLevrault","@alicedorgeval","@LouiseMalnoy","@alix_fx","@pierre_baudis","@LucMagoutier","@AgatheMuller","@SGianninelli","@PaulineBoyer33","@NaomiHalll","@romaindlx","@marionbr","@Burtschy","@JacobEtienne","@as_lizzani","@marie_simon","@LaureDaussy","@FabriceAmedeo","@min","@LoubnaChlaikhy","@PlummerWilliam","@OlivierMarin1","@alaurefremont","@mwesfreid","@ChBaDe","@pmathon","@theobaldmarie","@Lnpagesy","@marclandre","@paoliniesther","@Feertchak","@JBLitzler","@GuillaumeErrard","@quentinperinel","@TristanQM","@mlbo","@constancejamet","@LoraTerrazas","@emiliegeffray","@Mathilde_Sd","@CaroPiquet","@DCanivez","@TIM_7375","@blandinelc","@ivanrioufol","@arthurberdah","@SarahLecoeuvre","@guillaume_gui","@DamienMercereau","@W_Chloe","@Assma_MD","@EugenieBastie","@HiTech_lexpress","@bcondominas","@Laurie_Z_","@jeanfrancgerard","@MathieuPagura","@BGUYF","@AlainPiffaretti","@AudreyKucinskas","@julienhory","@Pierrefalga","@TiphThuillier","@cdaniez","@LigerBaptiste","@D_Peras","@julie_dlb","@Fatiha_Temmouri","@julian2lamancha","@GaetaneDeljurie","@JulianMattei","@M_Vicuna","@DeBruynOlivier","@Nehed_Jendoubi","@antoine_grenapi","@ColonnaGen","@VictoriaGairin","@Clement_Lacombe","@TVigoureux","@MargauxObriot","@solinedelos","@RocheSabine","@dangerkens","@EdouardDutour","@MDondeyne","@DupuisNathalie1","@bouscarel","@Mathieu2jean","@Sophie_T_J","@laurentcalixte","@patrockwilliams","@PascaleKremer","@AlexJaquin","@LauraIsaaz","@cath_robin","@Del_Gautherin","@Isaduriez","@lucietuile","@AugeyBastien","@mcastagnet","@AminaKalache","@mvaudano","@CParrot","@ombelinetips","@_JoinLion","@BarbolosiRose","@ToiBruno1","@FloraClodic","@xjbdx","@ceci_est_un_handle_vraiment_long","@AlexiaEy","@Emjy_STARK","@elcoco01","@rabilebon","@pflovens_","@FabriceFrossard","@MorganeSERRES","@MarjolaineKoch","@edgarsnow","@SRNLF","@CChassigneux","@KerinecMoran","@NassiraELM","@NewsRicard","@Sandreene","@Emilezrt","@Pierre_Do","@Micode","@CColumelli","@DavidAbiker","@ClementBergantz","@benjaminrabier","@celinekallmann","@edwyplenel","@C_Barbier","@JJBourdin_RMC","@LaurenceFerrari","@aslapix","@IsaMillet","@MaximeSwitek","@tomjoubert","@jszanchi","@roqueeva","@XavierBiseul","@florencesantrot","@AntoineCrochet","@freeman59","@MaudeML","@philippe_gulpi","@mathieum76","@kiouari","@imanemoustakir","@BenedicteMallet","@Emilie_Brouze","@antoinebarret","@_nicolasbocquet","@remibuhagiar","@CourretB","@AymericRobert","@miraelmartins","@pmaniere","@jesuisraphk","@David_Ingram","@pcelerier","@technomedia","@Geraldinedauver","@ThierryLabro","@Newsdusud","@nrauline","@gbregeras","@SCouasnonBFM","@actualites_nrv","@dimitrimoulins","@oli_aura","@FabieChiche","@Vincent_Raimblt","@ChristophGreuet","@PAlbuchay","@MarrauddesGrot","@vtalmon","@cedric","@olivierfrigara","@Julien_Jay","@LydiaBerroyer","@Shuua","@datisdaz","@Steuph","@ameliecharnay","@Bruno_LesNums","@LelloucheNico","@CciliaDiQuinzio","@Elodie_C","@SylvRolland","@Kocobe","@FL_Debes","@jdupontcalbo","@GarciaVictor_","@NicoRichaud","@RHoueix","@simottel","@DamienLicata","@annabelle_L","@Lea_Lejeune","@axel_deb","@marin_eben","@ptiberry","@MatthieuDelach","@sandrinecassini","@benjaminferran","@ppgarcia75","@NotPatrick","@ivalerio","@FabienneSchmitt","@alexgoude","@JeromeColombain","@manhack","@Capucine_Cousin","@Fsorel","@oliviertesquet","@marjoriepaillon","@ginades","@PierreTran","@DelphineCuny","@reesmarc","@lauratenoudji","@ldupin","@carolinedescham","@Lucile_Quillet","@cgabizon","@Allocab","@epenser","@JAGventeprivee","@frwrds","@Laure__Bourdon","@Xavier75","@maximeverner","@s_jourdain","@LoriHelloc"]

def show_handles(array)
    print "\n"
    puts array
    print "\n \n"
    return array
end


def calculate_number_of_handles(array)
    number_of_handles = array.length
    print "\n"
    puts "There are #{number_of_handles} handles in this array"
    print "\n \n"
    return number_of_handles
end

def find_shortest_handle(array)
    shortest_array = array.min{|a,b| a.size <=> b.size}
    print "\n"
    puts "The shortest handle is: #{shortest_array}"
    print "\n \n"
    return shortest_array
end

def find_handles_with_5_characters(array)
    array_length_5 = array.select {|i| i.length == 6}
    print "\n"
    puts "The handles with 5 characters only are: #{array_length_5}"
    print "\n \n"
    return array_length_5
end

def find_capitalized_handles(array)
    array_capitalized = array.select {|i| i[1].ord.between?(("A".ord),("Z".ord))}
    print "\n"
    puts "The handles starting with an uppercase letter are: #{array_capitalized.length}"
    print "\n \n"
    return array_capitalized
end

def sort_by_alphabetic_order(array)
    sorted_array = array.sort {|a, b| a.upcase <=> b.upcase} 
    print "\n"
    puts "The array of handles, sorted by alphabetic order: #{sorted_array}"
    print "\n \n"
    return sorted_array
end

def sort_by_length(array)
    sorted_array = array.sort_by {|handle| handle.length}
    print "\n"
    puts "The array of handles, sorted by username length: #{sorted_array}"
    print "\n \n"
    return sorted_array
end

def find_position_of_epenser(array)
    position = array.index("@epenser")
    print "\n"
    puts "The position in the array of username \"@epenser\" is: #{position}"
    print "\n \n"
    return position
end

def sort_handles_by_size_frequency(array)
    array_by_length = array.map {|handle| handle.length}
    hash_frequency = Hash[array_by_length.uniq.map {|v| [v, array_by_length.count(v)] }]
    hash_frequency_sorted = hash_frequency.sort_by { |k, v| v }.to_h
    print "\n"
    puts "The frequency of username length, from the least common length, to the most used is as following:"
    puts hash_frequency_sorted
    print "\n \n"
    return hash_frequency_sorted
end


def select_and_sort_handles_with_characters(array)
    #select arrays with characters (non letters)
    array_with_characters = array.reject { |i| i.chars.map { |i| i.upcase.ord }.all? { |i| (64..90).include? i } } 

    #sort arrays by numbers of characters
    #step 1: remove letters and @
    array_characters_only = array_with_characters.map {|i| i.chars.map {|i| i.upcase.ord}.delete_if { |i| (64..90).include? i } }
    
    #step 2: counting the numbers of characters remaining in each entry
    array_number_of_characters = array_characters_only.map {|i| i.length}

    #step 3: associating the number of characters with their respective handle
    hash_handles_with_characters = Hash[array_with_characters.zip(array_number_of_characters)]
    
    #step 4: sort the hash by value => return a nested array of handles and number of characters
    sorted_array_with_number_of_characters = hash_handles_with_characters.sort_by { |k, v| v }

    #step 5: select only the handle
    sorted_array_without_number_of_characters = sorted_array_with_number_of_characters.map { |i| i[0] }

    print "\n"
    puts "The handles containing non letters (numbers and characters), sorted from the least number of character, to the most"
    puts sorted_array_without_number_of_characters
    print "\n \n"

    return sorted_array_without_number_of_characters
end

def start(array)
    puts "---WELCOME---"
    print "\n"

    display_options(array)
end

def enter_choice
    print "> "
    player_choice = gets.ord
end

def display_options(array)
    puts "Assuming an array (list) containing handles (social network usernames) of jornalists, what information would you like to know?"
    print "\n"
    puts "Please choose between the following options:"
    puts "To see the array of jornalist usernames, press 0"
    puts "To know how many handles in the array, press 1"
    puts "To find the shortest handle, press 2"
    puts "To find all handles with 5 characters only (excluding the @), press 3"
    puts "To find all handles starting with an uppercase character, press 4"
    puts "To sort the array of handles by alphabetic order, press 5"
    puts "To sort the array by username length, press 6"
    puts "To find the position in the array of username \"@epenser\", press 7"
    puts "To obtain the frequency of username length, from the least common length, to the most used, press 8"
    puts "To find all handles containing non letters (numbers and characters),\nsorted from the least number of character, to the most, press 9"
    puts "To leave, press q"
    print "\n"
        what_to_do = case enter_choice
            when 48 then show_handles(array)
            when 49 then calculate_number_of_handles(array)
            when 50 then find_shortest_handle(array)
            when 51 then find_handles_with_5_characters(array)
            when 52 then find_capitalized_handles(array)
            when 53 then sort_by_alphabetic_order(array)
            when 54 then sort_by_length(array)
            when 55 then find_position_of_epenser(array)
            when 56 then sort_handles_by_size_frequency(array)
            when 57 then select_and_sort_handles_with_characters(array)
            when 113 then exit
            else 
                print "\n"
                puts "Sorry, I did not understand"
                puts "Try again" 
                print "\n \n"
                display_options(array)
        end
    display_options(array)
end

start(handles)