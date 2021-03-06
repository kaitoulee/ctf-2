#!/usr/bin/env ruby
#coding: utf-8

dict = {}
DATA.read.gsub(/\(.{1,2}\)/,'').each_line do |line|
  line.strip!
  next if line.empty?

  a = line.split(/\s{2,}/)
  if a.size == 3 && a[1] =~ /\A[A-Z-]+\Z/
    dict[a[1].downcase] = a[2].downcase
  else
    #puts "[?] #{a.inspect}"
  end
end

r = []
File.read("2.txt").split.each do |word|
  if eng = dict[word]
    r << eng
  else
    puts "[?] unknown word #{word.inspect}"
  end
end

print r.join(' ')

# Navajo 2 English dictionary - from http://www.history.navy.mil/faqs/faq61-4.htm
__END__
    A                WOL-LA-CHEE                ANT
    A                BE-LA-SANA                 APPLE
    A                TSE-NILL                   AXE
    B                 NA-HASH-CHID               BADGER
    B                SHUSH                      BEAR
    B                TOISH-JEH                  BARREL
    C                MOASI                      CAT
    C                TLA-GIN                    COAL
    C                BA-GOSHI                   COW
    D                BE                         DEER
    D                CHINDI                     DEVIL
    D                LHA-CHA-EH                 DOG
    E                AH-JAH                     EAR
    E                DZEH                       ELK
    E                AH-NAH                     EYE
    F                CHUO                       FIR
    F                TSA-E-DONIN-EE             FLY
    F                MA-E                       FOX
    G                AH-TAD                     GIRL
    G                KLIZZIE                    GOAT
    G                JEHA                       GUM
    H                TSE-GAH                    HAIR
    H                CHA                        HAT
    H                LIN                        HORSE
    I                TKIN                       ICE
    I                YEH-HES                    ITCH
    I                A-CHI                      INTESTINE
    J                TKELE-CHO-G                JACKASS
    J                AH-YA-TSINNE               JAW
    J                YIL-DOI                    JERK
    K                JAD-HO-LONI                KETTLE
    K                BA-AH-NE-DI-TININ          KEY
    K                KLIZZIE-YAZZIE             KID
    L                DIBEH-YAZZIE               LAMB
    L                AH-JAD                     LEG
    L                NASH-DOIE-TSO              LION
    M                TSIN-TLITI                 MATCH
    M                BE-TAS-TNI                 MIRROR
    M                NA-AS-TSO-SI               MOUSE
    N                TSAH                       NEEDLE
    N                A-CHIN                     NOSE
    O                A-KHA                      OIL
    O                TLO-CHIN                   ONION
    O                NE-AHS-JAH                 OWL
    P                CLA-GI-AIH                 PANT
    P                BI-SO-DIH                  PIG
    P                NE-ZHONI                   PRETTY
    Q                CA-YEILTH                  QUIVER
    R                GAH                        RABBIT
    R                DAH-NES-TSA                RAM
    R                AH-LOSZ                    RICE
    S                DIBEH                      SHEEP
    S                KLESH                      SNAKE
    T                D-AH                       TEA
    T                A-WOH                      TOOTH
    T                THAN-ZIE                   TURKEY
    U                SHI-DA                     UNCLE
    U                NO-DA-IH                   UTE
    V                A-KEH-DI-GLINI             VICTOR
    W                GLOE-IH                    WEASEL
    X                AL-NA-AS-DZOH              CROSS
    Y                TSAH-AS-ZIH                YUCCA
    Z                BESH-DO-TLIZ               ZINC


  <B>NAMES OF VARIOUS</B>
  <B>ORGANIZATIONS    NAVAJO WORD                LITERAL TRANSLATION</B>
    CORPS            DIN-NEH-IH                 CLAN
    DIVISION         ASHIH-HI                   SALT
    REGIMENT         TABAHA                     EDGE WATER
    BATTALION        TACHEENE                   RED SOIL
    COMPANY          NAKIA                      MEXICAN
    PLATOON          HAS-CLISH-NIH              MUD
    SECTION          YO-IH                      BEADS
    SQUAD            DEBEH-LI-ZINI              BLACK SHEEP

  <B>OFFICERS</B>
    COMMANDING GEN.  BIH-KEH-HE (G)             WAR CHIEF
    MAJOR GEN.       SO-NA-KIH                  TWO STAR
    BRIGADIER GEN.   SO-A-LA-IH                 ONE STAR
    COLONEL          ATSAH-BESH-LE-GAI          SILVER EAGLE
    LT. COLONEL      CHE-CHIL-BE-TAH-BESH-LEGAI SILVER OAK LEAF
    MAJOR            CHE-CHIL-BE-TAH-OLA        GOLD OAK LEAF
    CAPTAIN          BESH-LEGAI-NAH-KIH         TWO SILVER BARS
    LIEUTENANT       BESH-LEGAI-A-LAH-IH        ONE SILVER BAR
    COMMANDING OFFICER HASH-KAY-GI-NA-TAH       WAR CHIEF
    EXECUTIVE OFFICER  BIH-DA-HOL-NEHI          THOSE IN CHARGE

  <B>NAMES OF COUNTRIES</B>
    AFRICA          ZHIN-NI                     BLACKIES
    ALASKA          BEH-HGA                     WITH WINTER
    AMERICA         NE-HE-MAH                   OUR MOTHER
    AUSTRALIA       CHA-YES-DESI                ROLLED HAT
    BRITAIN         TOH-TA                      BETWEEN WATERS
    CHINA           CEH-YEHS-BESI               BRAIDED HAIR
    FRANCE          DA-GHA-HI                   BEARD
    GERMANY         BESH-BE-CHA-HE              IRON HAT
    ICELAND         TKIN-KE-YAH                 ICE LAND
    INDIA           AH-LE-GAI                   WHITE CLOTHES
    ITALY           DOH-HA-CHI-YALI-TCHI        STUTTER
    JAPAN           BEH-NA-ALI-TSOSIE           SLANT EYE
    PHILIPPINE      KE-YAH-DA-NA-LHE            FLOATING ISLAND
    RUSSIA          SILA-GOL-CHI-IH             RED ARMY
    SOUTH AMERICA   SHA-DE-AH-NE-HI-MAH         SOUTH OUR MOTHER
    SPAIN           DEBA-DE-NIH                 SHEEP PAIN

  <B>NAMES OF AIRPLANES</B>
    PLANES          WO-TAH-DE-NE-IH             AIR FORCE
    DIVE BOMBER     GINI                        CHICKEN HAWK
    TORPEDO PLANE   TAS-CHIZZIE                 SWALLOW
    OBS. PLAN       NE-AS-JAH                   OWL
    FIGHTER PLANE   DA-HE-TIH-HI                HUMMING BIRD
    BOMBER PLANE    JAY-SHO                     BUZZARD
    PATROL PLANE    GA-GIH                      CROW
    TRANSPORT       ATSAH                       EAGLE

  <B>NAMES OF SHIPS</B>
    SHIPS           TOH-DINEH-IH                SEA FORCE
    BATTLESHIP      LO-TSO                      WHALE
    AIRCRAFT        TSIDI-MOFFA-YE-HI           BIRD CARRIER
    SUBMARINE       BESH-LO                     IRON FISH
    MINE SWEEPER    CHA                         BEAVER
    DESTROYER       CA-LO                       SHARK
    TRANSPORT       DINEH-NAY-YE-HI             MAN CARRIER
    CRUISER         LO-TSO-YAZZIE               SMALL WHALE
    MOSQUITO BOAT   TSE-E                       MOSQUITO

 <B>NAMES OF MONTHS</B>
    JANUARY         ATSAH-BE-YAZ                SMALL EAGLE
    FEBRUARY        WOZ-CHEIND                  SQUEEKY VOICE
    MARCH           TAH-CHILL                   SMALL PLANT
    APRIL           TAH-TSO                     BIG PLANT
    MAY             TAH-TSOSIE                  SMALL PLANT
    JUNE            BE-NE-EH-EH-JAH-TSO         BIG PLANTING
    JULY            BE-NE-TA-TSOSIE             SMALL HARVEST
    AUGUST          BE-NEEN-TA-TSO              BIG HARVEST
    SEPTEMBER       GHAW-JIH                    HALF
    OCTOBER         NIL-CHI-TSOSIE              SMALL WIND
    NOVEMBER        NIL-CHI-TSO                 BIG WIND
    DECEMBER        YAS-NIL-TES                 CRUSTED SNOW

  <B>VOCABULARY</B>
  <B>WORD            NAVAJO                      LITERAL TRANSACTION</B>
    ABANDON         YE-TSAN                     RUN AWAY FROM
    ABOUT           WOLA-CHI-A-MOFFA-GAHN       ANT FIGHT
    ABREAST         WOLA-CHEE-BE-YIED           ANT BREAST
    ACCOMPLISH      UL-SO                       ALL DONE
    ACCORDING       BE-KA-HO                    ACCORDING TO
    ACKNOWLEDGE     HANOT-DZIED                 ACKNOWLEDGE
    ACTION          AH-HA-TINH                  PLACE OF ACTION
    ACTIVITY        AH-HA-TINH-Y                ACTION ENDING IN Y
    ADEQUATE        BEH-GHA                     ENOUGH
    ADDITION        IH-HE-DE-NDEL               ADDITION
    ADDRESS         YI-CHIN-HA-TSE              ADDRESS
    ADJACENT        BE-GAHI                     NEAR
    ADJUST          HAS-TAI-NEL-KAD             ADJUST
    ADVANCE         NAS-SEY                     AHEAD
    ADVISE          NA-NETIN                    ADVISE
    AERIAL          BE-ZONZ                     STINGER
    AFFIRMATIVE     LANH                        AFFIRMATIVE
    AFTER           BI-KHA-DI (A)               AFTER
    AGAINST         BE-NA-GNISH                 AGAINST
    AID             EDA-ELE-TSOOD               AID
    AIR             NILCHI                      AIR
    AIRDOME         NILCHI-BEGHAN               AIRDOME
    ALERT           HA-IH-DES-EE                ALERT
    ALL             TA-A-TAH (A)                ALL
    ALLIES          NIH-HI-CHO                  ALLIES
    ALONG           WOLACHEE-SNEZ               LONG ANT
    ALSO            EH-DO                       ALSO
    ALTERNATE       NA-KEE-GO-NE-NAN-DEY-HE     SECOND POSITION
    AMBUSH          KHAC-DA                     AMBUSH
    AMMUNITION  BEH-ELI-DOH-BE-CAH-ALI-TAS-AI   AMMUNITION
    AMPHIBIOUS      CHAL                        FROG
    AND             DO                          AND
    ANGLE           DEE-CAHN                    SLANTING
    ANNEX           IH-NAY-TANI                 ADDITION
    ANNOUNCE        BEH-HA-O-DZE                ANNOUNCE
    ANTI            WOL-LA-CHEE-TSIN            ANT ICE
    ANTICIPATE      NI-JOL-LIH                  ANTICIPATE
    ANY             TAH-HA-DAH                  ANY
    APPEAR          YE-KA-HA-YA                 APPEAR
    APPROACH        BI-CHI-OL-DAH               APPROACH
    APPROXIMATE     TO-KUS-DAN                  APPROXIMATE
    ARE             GAH-TSO BIG                 RABBIT
    AREA            HAZ-A-GIH                   AREA
    ARMOR           BESH-YE-HA-DA-DI-TEH        IRON PROTECTOR
    ARMY            LEI-CHA-IH-YIL-KNEE-IH      ARMY
    ARRIVE          IL-DAY                      ARRIVE
    ARTILLERY       BE-AL-DOH-TSO-LANI          MANY BIG GUNS
    AS              AHCE                        AS
    ASSAULT         ALTSEH-E-JAH-HE             FIRST STRIKER
    ASSEMBLE        DE-JI-KASH                  BUNCH TOGETHER
    ASSIGN          BAH-DEH-TAHN                ASSIGN
    AT              AH-DI                       AT
    ATTACK          AL-TAH-JE-JAY               ATTACK
    ATTEMPT         BO-O-NE-TAH (A)             TRY
    ATTENTION       GIHA                        ATTENTION
    AUTHENTICATOR   HANI-BA-AH-HO-ZIN           KNOW ABOUT
    AUTHORIZE       BE-BO-HO-SNEE               AUTHORIZE
    AVAILABLE       TA-SHOZ-TEH-IH              AVAILABLE

    BAGGAGE         KLAILH (B)                  BAGGAGE
    BANZAI          NE-TAH                      FOOL THEM
    BARGE           BESH-NA-ELT                 BARGE
    BARRAGE         BESH-BA-WA-CHIND            BARRAGE
    BARRIER         BIH-CHAN-NI-AH              IN THE WAY
    BASE            BIH-TSEE-DIH                BASE
    BATTERY         BIH-BE-AL-DOH-TKA-IH        THREE GUNS
    BATTLE          DA-AH-HI-DZI-TSIO           BATTLE
    BAY             TOH-AH-HI-GHINH             BAY
    BAZOOKA         AH-ZHOL                     BAZOOKA
    BE              TSES-NAH                    BEE
    BEACH           TAH-BAHN (B)                BEACH
    BEEN            TSES-NAH-NES-CHEE           BEE NUT
    BEFORE          BIH-TSE-DIH                 BEFORE
    BEGIN           HA-HOL-ZIZ                  COMMENCE FROM
    BELONG          TSES-NAH-SNEZ               LONG BEE
    BETWEEN         BI-TAH-KIZ                  BETWEEN
    BEYOND          BILH-LA DI                  DOWN BELOW
    BIVOUAC         EHL-NAS-TEH                 BRUSH SHELTER
    BOMB            A-YE-SHI                    EGGS
    BOOBY TRAP      DINEH-BA-WHOA-BLEHI         MAN TRAP
    BORNE           YE-CHIE-TSAH                BORN ELK
    BOUNDARY        KA-YAH-BI-NA-HAS-DZOH(B)    BOUNDARY
    BULL DOZER      DOLA-ALTH-WHOSH             BULL SLEEP
    BUNKER          TSAS-KA                     SANDY HOLLOW
    BUT             NEH-DIH                     BUT
    BY              BE-GHA                      BY

    CABLE           BESH-LKOH                   WIRE ROPE
    CALIBER         NAHL-KIHD                   MOVE AROUND
    CAMP            TO-ALTSEH-HOGAN             TEMPORARY PLACE
    CAMOUFLAGE      DI-NES-IH                   HID
    CAN             YAH-DI-ZINI                 CAN
    CANNONEER  BE-AL-DOH-TSO-DEY-DIL-DON-IGI    BIG GUN OPERATOR
    CAPACITY        BE-NEL-AH                   CAPACITY
    CAPTURE         YIS-NAH                     CAPTURE
    CARRY           YO-LAILH                    CARRY
    CASE            BIT-SAH                     CASE
    CASUALTY        BIH-DIN-NE-DEY              PUT OUT OF ACTION
    CAUSE           BI-NIH-NANI                 CAUSE
    CAVE            TSA-OND                     ROCK CAVE
    CEILING         DA-TEL-JAY                  SEAL
    CEMETARY        JISH-CHA                    AMONG DEVILS
    CENTER          ULH-NE-IH                   CENTER
    CHANGE          THLA-GO-A-NAT-ZAH           CHANGE
    CHANNEL         HA-TALHI-YAZZIE             SMALL SINGER
    CHARGE          AH-TAH-GI-JAH               CHARGE
    CHEMICAL        TA-NEE                      ALKALI
    CIRCLE          NAS-PAS                     CIRCLE
    CIRCUIT         AH-HEH-HA-DAILH             CIRCUIT
    CLASS           ALTH-AH-A-TEH               CLASS
    CLEAR           YO-AH-HOL-ZHOD              CLEAR
    CLIFF           TSE-YE-CHEE                 CLIFF
    CLOSE           UL-CHI-UH-NAL-YAH           CLOSE
    COAST GUARD     TA-BAS-DSISSI               SHORE RUNNER
    CODE            YIL-TAS                     PECK
    COLON         NAKI-ALH--DEH-DA-AL-ZHIN      TWO SPOTS
    COLUMN          ALTH-KAY-NE-ZIH             COLUMN
    COMBAT          DA-AH-HI-JIH-GANH           FIGHTING
    COMBINATION     AL-TKAS-EI                  MIXED
    COME            HUC-QUO                     COME
    COMMA           TSA-NA-DAHL                 TAIL DROP
    COMMERCIAL      NAI-EL-NE-HI                COMMERCIAL
    COMMIT          HUC-QUO-LA-JISH             COME GLOVE
    COMMUNICATION   HA-NEH-AL-ENJI              MAKING TALK
    CONCEAL         BE-KI-ASZ-JOLE              CONCEAL
    CONCENTRATION   TA-LA-HI-JIH                ONE PLACE
    CONCUSSION      WHE-HUS-DIL                 CONCUSSION
    CONDITION       AH-HO-TAI                   HOW IT IS
    CONFERENCE      BE-KE-YA-TI                 TALK OVER
    CONFIDENTIAL    NA-NIL-IN                   KEPT SECRET
    CONFIRM         TA-A-NEH                    MAKE SURE
    CONQUER         A-KEH-DES-DLIN              WON
    CONSIDER        NE-TSA-CAS                  THINK IT OVER
    CONSIST         BILH (C)                    CONSIST
    CONSOLIDATE     AH-HIH-HI-NIL               PUT TOGETHER
    CONSTRUCT       AHL-NEH                     TO MAKE
    CONTACT         AH-HI-DI-DAIL               COME TOGETHER
    CONTINUE        TA-YI-TEH                   CONTINUE
    CONTROL         NAI-GHIZ                    CONTROL
    CONVOY          TKAL-KAH-O-NEL              MOVING ON WATER
    COORDINATE      BEH-EH-HO-ZIN-NA-AS-DZOH    KNOWN LINES
    COUNTER ATTACK  WOLTAH-AL-KI-GI-JEH         COUNTER ACT
    COURSE          CO-JI-GOH                   COURSE
    CRAFT           AH-TOH                      NEST
    CREEK           TOH-NIL-TSANH               VERY LITTLE WATER
    CROSS           AL-N-AS-DZOH                CROSS
    CUB             SHUSH-YAHZ                  CUB

    DASH            US-DZOH                     DASH
    DAWN            HA-YELI-KAHN                DAWN
    DEFENSE         AH-KIN-CIL-TOH              DEFENSE
    DEGREE          NAHL-KIHD                   DEGREE
    DELAY           BE-SITIHN                   DEER LAY
    DELIVER         BE-BIH-ZIHDE                DEER LIVER
    DEMOLITION      AH-DEEL-TAHI                BLOW UP
    DENSE           HO-DILH-CLA (D)             WET
    DEPART          DA-DE-YAH                   DEPART
    DEPARTMENT      HOGAN                       DEPARTMENT
    DESIGNATE       YE-KHI-DEL-NEI              POINT OUT
    DESPERATE       AH-DA-AH-HO-DZAH            DOWN TO LAST
    DETACH          AL-CHA-NIL                  DETACHED
    DETAIL          BE-BEH-SHA                  DEER TAIL
    DETONATOR       AH-DEEL-TAHI (OR)           BLOWN UP
    DIFFICULT       NA-NE-KLAH                  DIFFICULT
    DIG IN          LE-EH-GADE                  DIG IN
    DIRECT          AH-JI-GO                    DIRECT
    DISEMBARK       EH-HA-JAY                   GET OUT
    DISPATCH        LA-CHAI-EN-SEIS-BE-JAY      DOG IS PATCH
    DISPLACE        HIH-DO-NAL                  MOVE
    DISPLAY         BE-SEIS-NA-NEH              DEER IS PLAY
    DISPOSITION     A-HO-TEY                    DISPOSITION
    DISTRIBUTE      NAH-NEH                     DISTRIBUTE
    DISTRICT        BE-THIN-YA-NI-CHE           DEER ICE STRICT
    DO              TSE-LE                      SMALL PUP
    DOCUMENT        BEH-EH-HO-ZINZ              DOCUMENT
    DRIVE           AH-NOL-KAHL                 DRIVE
    DUD             DI-GISS-YAHZIE              SMALL DUMMY
    DUMMY           DI-GISS-TSO                 BIG DUMMY

    EACH            TA-LAHI-NE-ZINI-GO (D)      EACH
    ECHELON         WHO-DZAH                    LINE
    EDGE            BE-BA-HI                    EDGE
    EFFECTIVE       BE-DELH-NEED                EFFECTIVE
    EFFORT          YEA-GO                      WITH ALL YOUR MIGHT
    ELEMENT         AH-NA-NAI                   TROOP REPRESENTING OTHERS
    ELEVATE         ALI-KHI-HO-NE-OHA           ELEVATE
    ELIMINATE       HA-BEH-TO-DZIL              ELIMINATE
    EMBARK          EH-HO-JAY                   GET ON
    EMERGENCY       HO-NEZ-CLA                  EMERGENCY
    EMPLACEMENT     LA-AZ-NIL                   EMPLACEMENT
    ENCIRCLE        YE-NAS-TEH (E)              ENCIRCLE
    ENCOUNTER       BI-KHANH                    GO AGAINST
    ENGAGE          A-HA-NE-HO-TA               AGREED
    ENGINE          CHIDI-BI-TSI-TSINE (E)      ENGINE
    ENGINEER        DAY-DIL-JAH-HE              ENGINEER
    ENLARGE         NIH-TSA-GOH-AL-NEH          MAKE BIG
    ENLIST          BIH-ZIH-A-DA-YI-LAH         ENLIST
    ENTIRE          TA-A-TAH (E)                ENTIRE
    ENTRENCH        E-GAD-AH-NE-LIH             MAKE DITCH
    ENVELOP         A-ZAH-GI-YA                 ENVELOP
    EQUIPMENT       YA-HA-DE-TAHI               EQUIPMENT
    ERECT           YEH-ZIHN                    STAND UP
    ESCAPE          A-ZEH-HA-GE-YAH             ESCAPE
    ESTABLISH       HAS-TAY-DZAH                ESTABLISH
    ESTIMATE        BIH-KE-TSE-HOD-DES-KEZ      ESTIMATE
    EVACUATE        HA-NA                       EVACUATE
    EXCEPT          NEH-DIH (E)                 EXCEPT
    EXCEPT          NA-WOL-NE                   EXPECT
    EXCHANGE        ALH-NAHL-YAH                EXCHANGE
    EXECUTE         A-DO-NIL                    EXECUTE
    EXPLOSIVE       AH-DEL-TAHI (E)             EXPLOSIVE
    EXPEDITE        SHIL-LOH (E)                SPEED UP
    EXTEND          NE-TDALE                    MAKE WIDE
    EXTREME         AL-TSAN-AH-BAHM             EACH END

    FAIL            CHA-AL-EIND                 FAIL
    FAILURE         YEES-GHIN                   FAILURE
    FARM            MAI-BE-HE-AHGAN             FOX ARM
    FEED            DZEH-CHI-YON                FEED
    FIELD           CLO-DIH (F)                 FIELD
    FIERCE          TOH-BAH-HA-ZSID             AFRAID
    FILE            BA-EH-CHEZ                  FILE
    FINAL           TAH-AH-KWO-DIH              THAT IS ALL
    FLAME THROWER   COH-AH-GHIL-TLID            FLAME THROWER
    FLANK           DAH-DI-KAD                  FLANK
    FLARE           WO-CHI                      LIGHT STREAK
    FLIGHT          MA-E-AS-ZLOLI               FOX LIGHT
    FORCE           TA-NA-NE-LADI               WITHOUT CARE
    FORM            BE-CHA                      FORM
    FORMATION       BE-CHA-YE-LAILH             FORMATION
    FORTIFICATION   AH-NA-SOZI                  CLIFF DWELLING
    FORTIFY         AH-NA-SOZI-YAZZIE           SMALL FORTIFICATION
    FORWARD         TEHI                        LET'S GO
    FRAGMENTATION   BESH-YAZZIE                 SMALL METAL
    FREQUENCY       HA-TALHI-TSO                BIG SINGER
    FRIENDLY        NEH-HECHO-DA-NE             FRIENDLY
    FROM            BI-TSAN-DEHN                FROM
    FURNISH         YEAS-NIL (F)                FURNISH
    FURTHER         WO-NAS-DI                   FURTHER

    GARRISON        YAH-A-DA-HAL-YON-IH         TAKE CARE OF
    GASOLINE        CHIDI-BI-TOH                GASOLINE
    GRENADE         NI-MA-SI                    POTATOES
    GUARD           NI-DIH-DA-HI                GUARD
    GUIDE           NAH-E-THLAI                 GUIDE

    HALL            LHI-TA-A-TA                 HORSE ALL
    HALF TRACK      ALH-NIH-JAH-A-QUHE          RACE TRACK
    HALT            TA-AKWAI-I                  HALT
    HANDLE          BET-SEEN                    HANDLE
    HAVE            JO                          HAVE
    HEADQUARTER     NA-HA-TAH-TA-BA-HOGAN       HEADQUARTER
    HELD            WO-TAH-TA-EH-DAHN-OH        HELD (PAST TENSE)
    HIGH            WO-TAH                      HIGH
    HIGH EXPLOSIVE  BE-AL-DOH-BE-CA-BIH-DZIL-IGI POWERFUL SHELL
    HIGHWAY         WO-TAH-HO-NE-TEH            HIGH WAY
    HOLD            WO-TKANH                    HOLD
    HOSPITAL        A-ZEY-AL-IH                 PLACE OF MEDICINE
    HOSTILE         A-NAH-NE-DZIN               NOT FRIENDLY
    HOWITZER        BE-EL-DON-TS-QUODI          SHORT BIG GUN

    ILLUMINATE      WO-CHI (I)                  LIGHT UP
    IMMEDIATELY     SHIL-LOH (I)                IMMEDIATELY
    IMPACT          A-HE-DIS-GOH                IMPACT
    IMPORTANT       BA-HAS-TEH                  IMPORTANT
    IMPROVE         HO-DOL-ZHOND                IMPROVE
    INCLUDE         EL-TSOD                     INCLUDE
    INCREASE        HO-NALH                     INCREASE
    INDICATE        BA-HAL-NEH                  TELL ABOUT
    INFANTRY        TA-NEH-NAL-DAHI             INFANTRY
    INFILTRATE      YE-GHA-NE-JEH               WENT THROUGH
    INITIAL         BEH-ED-DE-DLID              BRAND
    INSTALL         EHD-TNAH                    INSTALL
    INSTALLATION    NAS-NIL                     IN PLACE
    INSTRUCT        NA-NE-TGIN                  TEACH
    INTELLIGENCE    HO-YA (I)                   SMART
    INTENSE         DZEEL                       STRENGTH
    INTERCEPT       YEL-NA-ME-JAH               INTERCEPT
    INTERFERE       AH-NILH-KHLAI               INTERFERE
    INTERPRET       AH-TAH-HA-NE                INTERPRET
    INVESTIGATE     NA-ALI-KA                   TRACK
    INVOLVE         A-TAH                       INVOLVOE
    IS              SEIS                        SEVEN
    ISLAND          SEIS-KEYAH                  SEVEN ISLAND
    ISOLATE         BIH-TSA-NEL-KAD             SEPERATE

    JUNGLE          WOH-DI-CHIL                 JUNGLE

    KILL            NAZ-TSAID                   KILL
    KILOCYCLE       NAS-TSAID-A-KHA-AH-YEH-     KILL OIL GO AROUND
                    HA-DILH

    LABOR           NA-NISH (L)                 LABOR
    LAND            KAY-YAH                     LAND
    LAUNCH          TKA-GHIL-ZHOD               LAUNCH
    LEADER          AH-NA-GHAI                  LEADER
    LEAST           DE-BE-YAZIE-HA-A-AH         LAMB FEAST
    LEAVE           DAH-DE-YAH                  HE LEFT
    LEFT            NISH-CLA-JIH-GOH            LEFT
    LESS            BI-OH (L)                   LESS
    LEVEL           DIL-KONH                    LEVEL
    LIAISON         DA-A-HE-GI-ENEH             KNOW OTHER'S ACTION
    LIMIT           BA-HAS-AH                   LIMIT
    LITTER          NI-DAS-TON (L)              SCATTER
    LOCATE          A-KWE-EH                    SPOT
    LOSS            UT-DIN                      LOSS

    MACHINE GUN     A-KNAH-AS-DONIH             RAPID FIRE GUN
    MAGNETIC        NA-E-LAHI                   PICK UP
    MANAGE          HASTNI-BEH-NA-HAI           MAN AGE
    MANEUVER        NA-NA-O-NALTH               MOVING AROUND
    MAP             KAH-YA-NESH-CHAI            MAP
    MAXIMUM         BEL-DIL-KHON                FILL TO TOP
    MECHANIC        CHITI-A-NAYL-INIH           AUTO REPAIRMAN
    MECHANIZED      CHIDI-DA-AH-HE-GONI         FIGHTING CARS
    MEDICAL         A-ZAY                       MEDICINE
    MEGACYCLE       MIL-AH-HEH-AH-DILH          MILLION GO AROUND
    MERCHANT SHIP   NA-EL-NEHI-TSIN-NA-AILH     MERCHANT SHIP
    MESSAGE         HANE-AL-NEH                 MESSAGE
    MILITARY        SILAGO-KEH-GOH              MILITARY
    MILLIMETER      NA-AS-TSO-SI-A-YE-DO-TISH   DOUBLE MOUSE
    MINE            HA-GADE                     MINE
    MINIMUM         BE-OH (M)                   MINIMUM
    MINUTE          AH-KHAY-EL-KIT-YAZZIE       LITTLE HOUR
    MISSION         AL-NESHODI                  MISSION
    MISTAKE         O-ZHI                       MISS
    MOPPING         HA-TAO-DI                   MOPPING
    MORE            THLA-NA-NAH                 MORE
    MORTAR          BE-AL-DOH-CID-DA-HI         SITTING GUN
    MOTION          NA-HOT-NAH                  MOTION
    MOTOR           CHIDE-BE-TSE-TSEN           CAR HEAD

    NATIVE          KA-HA-TENI                  NATIVE
    NAVY            TAL-KAH-SILAGO              SEA SOLDIER
    NECESSARY       YE-NA-ZEHN                  WANT
    NEGATIVE        DO-YA-SHO-DA                NO GOOD
    NET             NA-NES-DIZI                 NET
    NEUTRAL         DO-NEH-LINI                 NEUTRAL
    NORMAL          DOH-A-TA-H-DAH              NORMAL
    NOT             NI-DAH-THAN-ZIE             NO TURKEY
    NOTICE          NE-DA-TAZI-THIN             NO TURKEY ICE
    NOW             KUT                         NOW
    NUMBER          BEH-BIH-KE-AS-CHINIGH       WHAT'S WRITTEN

    OBJECTIVE       BI-NE-YEI                   GOAL
    OBSERVE         HAL-ZID                     OBSERVE
    OBSTACLE        DA-HO-DESH-ZHA              OBSTACLE
    OCCUPY          YEEL-TSOD                   TAKEN
    OF              TOH-NI-TKAL-LO              OCEAN FISH
    OFFENSIVE       BIN-KIE-JINH-JIH-DEZ-JAY    OFFENSIVE
    ONCE            TA-LAI-DI                   ONCE
    ONLY            TA-EI-TAY-A-YAH             ONLY
    OPERATE         YE-NAHL-NISH                WORK AT
    OPPORTUNITY     ASH-GA-ALIN                 OPPORTUNITY
    OPPOSITION      NE-HE-TSAH-JIH-SHIN         OPPOSITION
    OR              EH-DO-DAH-GOH               EITHER
    ORANGE          TCHIL-LHE-SOI               ORANGE
    ORDER           BE-EH-HO-ZINI               ORDER
    ORDNANCE        LEI-AZ-JAH                  UNDER GROUND
    ORIGINATE       DAS-TEH-DO                  BEGIN
    OTHER           LA-E-CIH                    OTHER
    OUT             CLO-DIH                     OUT SIDE
    OVERLAY         BE-KA-HAS-TSOZ              OVERLAY

    PARENTHESIS     ATSANH                      RIB
    PARTICULAR      A-YO-AD-DO-NEH              PARTICULAR
    PARTY           DA-SHA-JAH                  PARTY
    PAY             NA-ELI-YA                   PAY
    PENALIZE        TAH-NI-DES-TANH             SET BACK
    PERCENT         YAL                         MONEY
    PERIOD          DA-AHL-ZHIN                 PERIOD
    PERIODIC        DA-AL-ZHIN-THIN-MOASI       PERIOD ICE CAT
    PERMIT          GOS-SHI-E                   PERMIT
    PERSONNEL       DA-NE-LEI                   MEMBER
    PHOTOGRAPH      BEH-CHI-MA-HAD-NIL          PHOTOGRAPH
    PILL BOX        BI-SO-DIH-DOT-SAHI-BI-TSAH  SICK PIG BOX
    PINNED DOWN     BIL-DAH-HAS-TANH-YA         PINNED DOWN
    PLANE           TSIDI                       BIRD
    PLASMA          DIL-DI-GHILI                PLASMA
    POINT           BE-SO-DE-DEZ-AHE            PIG POINT
    PONTOON         TKOSH-JAH-DA-NA-ELT         FLOATING BARREL
    POSITION        BILH-HAS-AHN                POSITION
    POSSIBLE        TA-HA-AH-TAY                POSSIBLE
    POST            SAH-DEI                     POST
    PREPARE         HASH-TAY-HO-DIT-NE          PREPARE
    PRESENT         KUT                         PRESENT
    PREVIOUS        BIH-TSE-DIH                 PREVIOUS
    PRIMARY         ALTSEH-NAN-DAY-HI-GIH       1ST POSTION
    PRIORITY        HANE-PESODI                 PRIORITY
    PROBABLE        DA-TSI                      PROBABLE
    PROBLEM         NA-NISH-TSOH                BIG JOB
    PROCEED         NAY-NIH-JIH                 GO
    PROGRESS        NAH-SAI                     PROGRESS
    PROTECT         AH-CHANH                    SELF DEFENSE
    PROVIDE         YIS-NIL                     PROVIDE
    PURPLE          DINL-CHI                    PURPLE
    PYROTECHNIC     COH-NA-CHANH                FANCY FIRE

    QUESTION        AH-JAH                      EAR
    QUICK           SHIL-LOH                    QUICK

    RADAR           ESAT-TSANH (R)              LISTEN
    RAID            DEZJAY                      RAID
    RAILHEAD        A-DE-GEH-HI                 SHIPPING POINT
    RAILROAD        KONH-NA-AL-BANSI-BI-THIN    RAILROAD
    RALLYING        A-LAH-NA-O-GLALIH           GATHERING
    RANGE           AN-ZAH                      DISTANCE
    RATE            GAH-EH-YAHN                 RABBIT ATE
    RATION          NA-A-JAH                    RATION
    RAVINE          CHUSH-KA (R)                RAVINE
    REACH           IL-DAY (R)                  REACH
    READY           KUT (R)                     READY
    REAR            BE-KA-DENH (R)              REAR
    RECEIPT         SHOZ-TEH                    RECEIPT
    RECOMMEND       CHE-HO-TAI-TAHN             RECOMMEND
    RECONNAISSANCE  HA-A-CIDI                   INSPECTOR
    RECONNOITER     TA-HA-NE-AL-YA              MAKE SURE
    RECORD          GAH-AH-NAH-KLOLI            R-E-ROPE
    RED             LI-CHI                      RED
    REEF            TSA-ZHIN                    BLACK ROCK
    REEMBARK        EH-NA-COH                   GO IN
    REFIRE          NA-NA-COH                   REFIRE
    REGULATE        NA-YEL-N                    REGULATE
    REINFORCE       NAL-DZIL                    REINFORCE
    RELIEF          AGANH-TOL-JAY               RELIEF
    RELIEVE         NAH-JIH-CO-NAL-YA           REMOVE
    REORGANIZE      HA-DIT-ZAH                  REORGANIZE
    REPLACEMENT     NI-NA-DO-NIL                REPLACEMENT
    REPORT          WHO-NEH                     GOT WORD
    REPRESENTATIVE  TKA-NAZ-NILI                TRIPLE MEN
    REQUEST         JO-KAYED-GOH                ASK FOR
    RESERVE         HESH-J-E                    RESERVE
    RESTRICT        BA-HO-CHINI                 RESTRICT
    RETIRE          AH-HOS-TEEND                RETIRE
    RETREAT         JI-DIN-NES-CHANH            RETREAT
    RETURN          NA-DZAH                     CAME BACK
    REVEAL          WHO-NEH (L)                 REVEAL
    REVERT          NA-SI-YIZ                   TURN ABOUT
    REVETMENT       BA-NAS-CLA (R)              CORNER
    RIDGE           GAH-GHIL-KEID               RABBIT RIDGE
    RIFLEMAN        BE-AL-DO-HOSTEEN            RIFLEMEN
    RIVER           TOH-YIL-KAL                 MUCH WATER
    ROBOT BOMB      A-YE-SHI-NA-TAH-IH          EGG FLY
    ROCKET          LESZ-YIL-BESHI              SAND BOIL
    ROLL            YEH-MAS                     ROLL
    ROUND           NAZ-PAS (R)                 ROUND
    ROUTE           GAH-BIH-TKEEN               RABBIT TRAIL
    RUNNER          NIH-DZID-TEIH               RUNNER

    SABOTAGE        A-TKEL-YAH                  HINDERED
    SABOTEUR        A-TKEL-EL-INI               TROUBLE MAKER
    SAILOR          CHA-LE-GAI                  WHITE CAPS
    SALVAGE         NA-HAS-GLAH                 PICK THEM UP
    SAT             BIH-LA-SANA-CID-DA-HI       APPLE SITTING
    SCARLET, RED    LHE-CHI (S &amp; R)             RED
    SCHEDULE        BEH-EH-HO-ZINI              SCHEDULE
    SCOUT           HA-A-SID-AL-SIZI-GIH        SHORT RACOON
    SCREEN          BESH-NA-NES-DIZI            SCREEN
    SEAMAN          TKAL-KAH-DINEH-IH           SEAMAN
    SECRET          BAH-HAS-TKIH                SECRET
    SECTOR          YOEHI (S)                   SECTOR
    SECURE          YE-DZHE-AL-TSISI            SMALL SECURITY
    SEIZE           YEEL-STOD                   SEIZE
    SELECT          BE-TAH-HAS-GLA              TOOK OUT
    SEMI COLON      DA-AHL-ZHIN-BI-TSA-NA-DAHL  DOT DROP
    SET             DZEH-CID-DA-HI              ELK SITTING
    SHACKLE         DI-BAH-NESH-GOHZ            SHACKLE
    SHELL           BE-AL-DOH-BE-CA             SHELL
    SHORE           TAH-BAHN (S)                SHORE
    SHORT           BOSH-KEESH                  SHORT
    SIDE            BOSH-KEESH                  SIDE
    SIGHT           YE-EL-TSANH                 SEEN
    SIGNAL          NA-EH-EH-GISH               BY SIGNS
    SIMPLEX         ALAH-IH-NE-TIH              INNER WIRE
    SIT             TKIN-CID-DA-HI              ICE SITTING
    SITUATE         A-HO-TAY                    (S) SITUATE
    SMOKE           LIT                         SMOKE
    SNIPER          OH-BEHI                     PICK 'EM OFF
    SPACE           BE-TKAH                     BETWEEN
    SPECIAL         E-YIH-SIH                   MAIN THING
    SPEED           YO-ZONS                     SWIFT MOTION
    SPORADIC        AH-NA-HO-NEIL               NOW AND THEN
    SPOTTER         EEL-TSAY-I                  SPOTTER
    SPRAY           KLESH-SO-DILZIN             SNAKE PRAY
    SQUADRON        NAH-GHIZI                   SQUASH
    STORM           NE-OL                       STORM
    STRAFF          NA-WO-GHI-GOID              HOE
    STRAGGLER       CHY-NE-DE-DAHE              STRAGGLER
    STRATEGY        NA-HA-TAH (S)               STRATEGY
    STREAM          TOH-NI-LIH                  RUNNING WATER
    STRENGTH        DZHEL                       STRENGTH
    STRETCH         DESZ-TSOOD                  STRETCH
    STRIKE          NAY-DAL-GHAL                STRIKE
    STRIP           HA-TIH-JAH                  STRIP
    STUBBORN        NIL-TA                      STUBBORN
    SUBJECT         NA-NISH-YAZZIE              SMALL JOB
    SUBMERGE        TKAL-CLA-YI-YAH             WENT UNDER WATER
    SUBMIT          A-NIH-LEH                   SEND
    SUBORDINATE     AL-KHI-NAL-DZL              HELPING EACH OTHER
    SUCCEED         YAH-TAY-GO-E-ELAH           MAKE GOOD
    SUCCESS         UT-ZAH                      IT IS DONE
    SUCCESSFUL      UT-ZAH-HA-DEZ-BIN           IT IS DONE WELL
    SUCCESSIVE      UT-ZAH-SID                  SUCCESS SCAR
    SUCH            YIS-CLEH                    SOX
    SUFFER          TO-HO-NE                    SUFFER
    SUMMARY         SHIN-GO-BAH                 SUMMER MARY
    SUPPLEMENTARY   TKA-GO-NE-NAN-DEY-HE        3RD POSITION
    SUPPLY          NAL-YEH-HI                  SUPPLY
    SUPPLY SHIP     NALGA-HI-TSIN-NAH-AILH      SUPPLY SHIP
    SUPPORT         BA-AH-HOT-GLI               DEPEND
    SURRENDER       NE-NA-CHA                   SURRENDER
    SURROUND        NAZ-PAS (S)                 SURROUND
    SURVIVE         YIS-DA-YA                   SURVIVE
    SYSTEM       DI-BA-TSA-AS-ZHI-BI-TSIN       SYSTEM

    TACTICAL        E-CHIHN                     TACTICAL
    TAKE            GAH-TAHN                    TAKE
    TANK            CHAY-DA-GAHI                TORTOISE
    TANK DESTROYER  CHAY-DA-GAHI-NAIL-TSAIDI    TORTOISE KILLER
    TARGET          WOL-DONI                    TARGET
    TASK            TAZI-NA-EH-DIL-KID          TURKEY ASK
    TEAM            DEH-NA-AS-TSO-SI            TEA MOUSE
    TERRACE         ALI-KHI-HO-NE-OHA (T)       TERRACE
    TERRAIN         TASHI-NA-HAL-THIN           TURKEY RAIN
    TERRITORY       KA-YAH (T)                  TERRITORY
    THAT            TAZI-CHA                    TURKEY HAT
    THE             CHA-GEE                     BLUE-JAY
    THEIR           BIH                         THEIR
    THEREAFTER      TA-ZI-KWA-I-BE-KA-DI        TURKEY HERE AFTER
    THESE           CHA-GI-O-EH                 THE SEE
    THEY            CHA-GEE (Y)                 THE Y
    THIS            DI                          THE
    TOGETHER        TA-BILH                     TOGETHER
    TORPEDO         LO-BE-CA                    FISH SHELL
    TOTAL           TA-AL-SO                    TOTAL
    TRACER          BEH-NA-AL-KAH-HI            TRACER
    TRAFFIC DIAGRAM HANE-BA-NA-AS-DZOH          DIAGRAM STORY LINE
    TRAIN           COH-NAI-ALI-BAHN-SI         TRAIN
    TRANSPORTATION  A-HAH-DA-A-CHA              TRANSPORTATION
    TRENCH          E-GADE                      TRENCH
    TRIPLE          TKA-IH                      TRIPLE
    TROOP           NAL-DEH-HI                  TROOP
    TRUCK           CHIDO-TSO                   BIG AUTO
    TYPE            ALTH-AH-A-TEH               TYPE

    UNDER           BI-YAH                      UNDER
    UNIDENTIFIED    DO-BAY-HOSEN-E              UNIDENTIFIED
    UNIT            DA-AZ-JAH (U)               UNIT
    UNSHACKLE       NO-DA-EH-NESH-GOHZ          UNSHACKLE
    UNTIL           UH-QUO-HO                   UNTIL

    VICINITY        NA-HOS-AH-GIH               THERE ABOUT
    VILLAGE         CHAH-HO-OH-LHAN-IH          MANY SHELTER
    VISIBILITY      NAY-ES-TEE                  VISIBILITY
    VITAL           TA-EH-YE-SY                 VITAL

    WARNING         BILH-HE-NEH (W)             WARNING
    WAS             NE-TEH                      WAS
    WATER           TKOH                        WATER
    WAVE            YILH-KOLH                   WAVE
    WEAPON          BEH-DAH-A-HI-JIH-GANI       FIGHTING WEAPON
    WELL            TO-HA-HA-DLAY               WELL
    WHEN            GLOE-EH-NA-AH-WO-HAI        WEASEL HEN
    WHERE           GLOE-IH-QUI-AH              WEASEL HERE
    WHICH           GLOE-IH-A-HSI-TLON          WEASEL TIED TOGETHER
    WILL            GLOE-IH-DOT-SAHI            SICK WEASEL
    WIRE            BESH-TSOSIE                 SMALL WIRE
    WITH            BILH (W)                    WITH
    WITHIN          BILH-BIGIH                  WITH IN
    WITHOUT         TA-GAID                     WITHOUT
    WOOD            CHIZ                        FIRE WOOD
    WOUND           CAH-DA-KHI                  WOUND

    YARD            A-DEL-TAHL                  YARD

    ZONE            BIH-NA-HAS-DZOH             ZONE

