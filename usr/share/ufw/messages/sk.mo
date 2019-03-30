��    �      |  �   �
      p     q  "   s  b  �     �  (     #   @     d     z  &   �     �     �     �  *   �     )     1  )   8     b  "   z     �     �  /   �     �               "  #   5  #   Y  %   }      �     �     �     �               *  W   F     �  "   �     �  &   �  "   #     F     b     z     �     �  !   �     �  '   
     2     I  !   `     �  !   �  %   �     �     �  !        1  &   L  5   s  *   �  .   �  =        A  (   S  %   |  %   �  0   �  &   �        /   2     b  >   t  @   �     �     �       3   '  ,   [     �     �     �     �     �     �  '        3     H     a     x     �  +   �     �     �               0     @     U     h     y  	   �     �  %   �  /   �               :     H  &   g     �  !   �     �     �     �  1   �  /   )     Y  !   f     �  ,   �  T   �     &   
   �       �      �      �      �      �      !     !     :!  4   U!  $   �!     �!     �!     �!     
"     &"     C"  *   Z"  :   �"     �"      �"  )   �"     )#  #   F#  0   j#     �#     �#  
   �#     �#     �#     �#     �#     $     -$  %   E$     k$     �$     �$     �$  &   �$      %     %     %  4   #%     X%     `%     b%  �  f%      '  0   '  �  3'  0   �*  ,   "+  -   O+  "   }+  %   �+  ,   �+      �+     ,  %   (,  :   N,  	   �,  	   �,  4   �,     �,  ,   �,     -     .-  <   G-     �-     �-     �-     �-  5   �-  /   .  0   <.  2   m.     �.     �.  '   �.  &   �.      /     2/  T   P/  )   �/  '   �/  *   �/  3   "0  )   V0  %   �0     �0  "   �0     �0  &   1  +   -1  2   Y1  -   �1      �1      �1  .   �1     +2      @2  &   a2  -   �2  %   �2  0   �2  -   3  7   ;3  A   s3  5   �3  ?   �3  4   +4     `4  =   l4  #   �4  #   �4  4   �4  ?   '5     g5  :   �5     �5  O   �5  T   %6     z6     }6     �6  D   �6  6   �6      17     R7     o7     �7     �7     �7  +   �7     8     )8  +   F8     r8     �8  7   �8  $   �8  "    9     #9     89     T9     e9     ~9     �9     �9     �9     �9  (   �9  >   :  ,   P:  -   }:     �:  1   �:  8   �:  $   %;  (   J;  $   s;     �;     �;  =   �;  5   �;     <     %<     B<  ,   ]<  Z   �<  �   �<     u=  $   �=     �=     �=     �=     �=     >  )    >  -   J>  L   x>  -   �>  0   �>  ,   $?  +   Q?  (   }?  -   �?  (   �?  @   �?  M   >@  -   �@  .   �@  2   �@      A  3   =A  1   qA     �A     �A     �A     �A     �A  "   �A  $   B     7B      TB  )   uB      �B  A   �B  :   C     =C  9   WC     �C     �C     �C  5   �C     �C     D     D     <   K               2   `   h   �      �   �       �   �   
   �              o   �   G   7   Y               T   �       C   t      ;   y   6       �   x           �          �   �   c   :       ,   d       O       5   @   q   V   _      �   �       m   �   r   p   1   �   !   	   l           Z             �   �   '   8   �              *                 a      �      u      �   �   �   \   �       �   +           ]   "       �   )           z   �      �          �   N   %   $   v      F   i   n                �   �       9   e   f       M   0                  Q   ~       �       |   H   g   J   �   �       �   D   �   U           >       L          B       4       �   S      =   ?   k   -           A   {          }   �             I                 �   [      &   j   ^       #   �   �   �   (   E   �   P   �   s   /       �       R   w   3          W   b   X       .    
 
Error applying application rules. 
Usage: %(progname)s %(command)s

%(commands)s:
 %(enable)-31s enables the firewall
 %(disable)-31s disables the firewall
 %(default)-31s set default policy
 %(logging)-31s set logging to %(level)s
 %(allow)-31s add allow %(rule)s
 %(deny)-31s add deny %(rule)s
 %(reject)-31s add reject %(rule)s
 %(limit)-31s add limit %(rule)s
 %(delete)-31s delete %(urule)s
 %(insert)-31s insert %(urule)s at %(number)s
 %(reset)-31s reset firewall
 %(status)-31s show firewall status
 %(statusnum)-31s show firewall status as numbered list of %(rules)s
 %(statusverbose)-31s show verbose firewall status
 %(show)-31s show firewall report
 %(version)-31s display version information

%(appcommands)s:
 %(applist)-31s list application profiles
 %(appinfo)-31s show information on %(profile)s
 %(appupdate)-31s update %(profile)s
 %(appdefault)-31s set default application policy
  (skipped reloading firewall)  Attempted rules successfully unapplied.  Some rules could not be unapplied. %s is group writable! %s is world writable! '%(f)s' file '%(name)s' does not exist '%s' already exists. Aborting '%s' does not exist '%s' is not writable (be sure to update your rules accordingly) Aborted Action Adding IPv6 rule failed: IPv6 not enabled Available applications: Backing up '%(old)s' to '%(new)s'
 Bad destination address Bad interface name Bad interface name: can't use interface aliases Bad interface type Bad port Bad port '%s' Bad source address Cannot insert rule at position '%d' Cannot insert rule at position '%s' Cannot specify 'all' with '--add-new' Cannot specify insert and delete Checking ip6tables
 Checking iptables
 Checking raw ip6tables
 Checking raw iptables
 Checks disabled Command '%s' already exists Command may disrupt existing ssh connections. Proceed with operation (%(yes)s|%(no)s)?  Could not back out rule '%s' Could not delete non-existent rule Could not find '%s'. Aborting Could not find a profile matching '%s' Could not find executable for '%s' Could not find profile '%s' Could not find protocol Could not find rule '%d' Could not find rule '%s' Could not get listening status Could not get statistics for '%s' Could not load logging rules Could not normalize destination address Could not perform '%s' Could not set LOGLEVEL Could not update running firewall Couldn't find '%s' Couldn't find parent pid for '%s' Couldn't find pid (is /proc mounted?) Couldn't open '%s' for reading Couldn't stat '%s' Couldn't update application rules Couldn't update rules file Couldn't update rules file for logging Default %(direction)s policy changed to '%(policy)s'
 Default application policy changed to '%s' Default: %(in)s (incoming), %(out)s (outgoing) Deleting:
 %(rule)s
Proceed with operation (%(yes)s|%(no)s)?  Description: %s

 Duplicate profile '%s', using last found ERROR: this script should not be SGID ERROR: this script should not be SUID Firewall is active and enabled on system startup Firewall not enabled (skipping reload) Firewall reloaded Firewall stopped and disabled on system startup Found exact match Found multiple matches for '%s'. Please use exact profile name Found non-action/non-logtype match (%(xa)s/%(ya)s %(xl)s/%(yl)s) From IPv6 support not enabled Improper rule syntax Improper rule syntax ('%s' specified with app rule) Insert position '%s' is not a valid position Invalid '%s' clause Invalid 'from' clause Invalid 'port' clause Invalid 'proto' clause Invalid 'to' clause Invalid IP version '%s' Invalid IPv6 address with protocol '%s' Invalid command '%s' Invalid interface clause Invalid log level '%s' Invalid log type '%s' Invalid option Invalid policy '%(policy)s' for '%(chain)s' Invalid port with protocol '%s' Invalid ports in profile '%s' Invalid position ' Invalid position '%d' Invalid profile Invalid profile name Invalid token '%s' Logging disabled Logging enabled Logging:  Missing policy for '%s' Mixed IP versions for 'from' and 'to' Must specify 'tcp' or 'udp' with multiple ports Need 'from' or 'to' with '%s' Need 'to' or 'from' clause New profiles: No ports found in profile '%s' No rules found for application profile Option 'log' not allowed here Option 'log-all' not allowed here Port ranges must be numeric Port: Ports: Profile '%(fn)s' has empty required field '%(f)s' Profile '%(fn)s' missing required field '%(f)s' Profile: %s
 Profiles directory does not exist Protocol mismatch (from/to) Protocol mismatch with specified protocol %s Resetting all rules to installed defaults. Proceed with operation (%(yes)s|%(no)s)?  Resetting all rules to installed defaults. This may disrupt existing ssh connections. Proceed with operation (%(yes)s|%(no)s)?  Rule added Rule changed after normalization Rule deleted Rule inserted Rule updated Rules updated Rules updated (v6) Rules updated for profile '%s' Skipped reloading firewall Skipping '%(value)s': value too long for '%(field)s' Skipping '%s': also in /etc/services Skipping '%s': couldn't process Skipping '%s': couldn't stat Skipping '%s': field too long Skipping '%s': invalid name Skipping '%s': name too long Skipping '%s': too big Skipping '%s': too many files read already Skipping IPv6 application rule. Need at least iptables 1.4 Skipping adding existing rule Skipping inserting existing rule Skipping malformed tuple (bad length): %s Skipping malformed tuple: %s Skipping unsupported IPv6 '%s' rule Status: active
%(log)s
%(pol)s
%(app)s%(status)s Status: active%s Status: inactive Title: %s
 To Unknown policy '%s' Unsupported action '%s' Unsupported default policy Unsupported direction '%s' Unsupported policy '%s' Unsupported policy for direction '%s' Unsupported protocol '%s' WARN: '%s' is world readable WARN: '%s' is world writable Wrong number of arguments You need to be root to run this script n problem running running ufw-init uid is %(uid)s but '%(path)s' is owned by %(st_uid)s unknown y yes Project-Id-Version: ufw
Report-Msgid-Bugs-To: FULL NAME <EMAIL@ADDRESS>
POT-Creation-Date: 2012-07-29 09:48-0500
PO-Revision-Date: 2010-09-18 00:47+0000
Last-Translator: helix84 <Unknown>
Language-Team: Slovak <sk-i18n@lists.linux.sk>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Launchpad-Export-Date: 2012-08-12 01:56+0000
X-Generator: Launchpad (build 15780)
 
 
Chyba pri pokuse použiť pravidlá aplikácie. 
Použitie: %(progname)s %(command)s

%(commands)s:
 %(enable)-31s zapne firewall
 %(disable)-31s vypne firewall
 %(default)-31s nastaví predvolenú politiku
 %(logging)-31s nastaví záznam na %(level)s
 %(allow)-31s pridá povolenie %(rule)s
 %(deny)-31s pridá deny %(rule)s
 %(reject)-31s pridá reject %(rule)s
 %(limit)-31s pridá limit %(rule)s
 %(delete)-31s zmaže %(urule)s
 %(insert)-31s vloží %(urule)s na %(number)s
 %(reset)-31s reštartuje firewall
 %(status)-31s zobrazí stav firewallu
 %(statusnum)-31s zobrazí stav firewallu ako číslovaný zoznam %(rules)s
 %(statusverbose)-31s zobrazí podrobný výpis stavu firewallu
 %(show)-31s zobrazí správu firewallu
 %(version)-31s zobrazí informácie o verzii

%(appcommands)s:
 %(applist)-31s zobrazí zoznam profilov aplikácií
 %(appinfo)-31s zobrazí informácie o %(profile)s
 %(appupdate)-31s aktualizuje %(profile)s
 %(appdefault)-31s nastaví predvolenú politiku aplikácií
  (preskočené opätovné načítanie firewallu)  Požadované pravidlá úspešne zrušené.  Niektoré pravidlá nebolo možné zrušiť. %s je zapisovateľný pre skupinu! %s je zapisovateľný pre všetkých! „%(f)s“ súbor „%(name)s“ neexistuje „%s“ už existuje. Ruší sa „%s“ neexistuje „%s“ nie je prístupný na zápis (urobte príslušné aktualizácie vo vašich pravidlách) Zrušené Operácia Pridanie pravidla IPv6 zlyhalo: IPv6 nie je zapnutý Dostupné aplikácie: Zálohuje sa „%(old)s“ do „%(new)s“
 Chybná cieľová adresa Chybný názov rozhrania Chybný názov rozhrania: nemožno použiť aliasy rozhrania Chybný typ rozhrania Chybný port Chybný port „%s” Chybná zdrojová adresa Nie je možné vložiť pravidlo na pozíciu „%d“ Nemožno vložiť pravidlo na pozíciu „%s“ Nemožno zadť „all“ spolu s „--add-new“ Nie je možné špecifikovať vkladanie a zmazanie Kontroluje sa ip6tables
 Kontroluje sa iptables
 Kontrolujú sa nespracované ip6tables
 Kontrolujú sa nespracované iptables
 Kontroly vypnuté Príkaz „%s“ už existuje Príkaz môže narušiť prebiehajúce spojenia ssh. Pokračovať (%(yes)s|%(no)s)?  Nepodarilo sa stiahnuť pravidlo „%s“ Nemožno zmazať neexistujúce pravidlo Nebolo možné nájsť „%s“. Ruší sa Nepodarilo sa násť profil zodpovedajúci „%s“ Nenájdený spustiteľný súbor „%s“ Nebolo možné násť profil „%s“ Nepodarilo sa nájsť protokol Nebolo nájdené pravidlo „%d“ Nenájdené pravidlo „%s“ Nepodarilo sa zistiť stav počúvania Nepodarilo sa získať štatistiku „%s“ Nepodarilo sa načítať pravidlá zaznamenávania Nebolo možné normalizovať cieľovú adresu Nebolo možné vykonať „%s“ Nepodarilo sa nastaviť LOGLEVEL Nebolo možné aktualizovať bežiaci firewall Nenájdený „%s“ Nenájdený PID rodiča „%s“ Nenájdený PID (je /proc pripojený?) Nebolo možné otvoriť „%s” na čítanie Nie je možné vykonať stat „%s” Nepodarilo sa aktualizovať pravidlá aplikácie Nebolo možné aktualizovať súbor pravidiel Nepodarilo sa aktualizovať súbor pravidiel na záznam Štandardná politika %(direction)s zmenená na „%(policy)s“
 Štandardná politika aplikácie zmenená na „%s“ Štandardne: %(in)s (prichádzajúce), %(out)s (odchádzajúce) Zmaže sa:
 %(rule)s
Pokračovať (%(yes)s|%(no)s)?  Popis: %s

 Duplicitný profil „%s“, používa sa posledné nájdené CHYBA: tento skript nemá byť SGID CHYBA: tento skript nemá byť SUID Firewall je aktívny a zapnutý pri štarte systému Firewall nie je zapnutý (preskakuje sa opätovné načítanie) Firewall znovu načítaný Firewall je zastavený a nespustí sa pri štarte systému Nájdená presná zhoda Nájdené viaceré zhody pre „%s“. Prosím, použite presný názov profilu Nájdená zhoda, ktorá nie je akcia ani typ záznamu  (%(xa)s/%(ya)s %(xl)s/%(yl)s) Od Podpora IPv6 nie je zapnutá Nesprávna syntax pravidla Neplatná syntax pravidla („%s“ uvedené s pravidlom aplikácie) Pozícia na vloženie „%s“ nie je platná pozícia Nepodporovaná klauzula „%s“ Neplatná kluzula „from” Neplatná kluzula „port” Neplatná kluzula „proto” Neplatná kluzula „to” Neplatná verzia IP „%s” Neplatná IPv6 adresa s protokolom „%s“ Neplatný príkaz „%s“ Neplatná klauzula rozhrania Neplatná úroveň zaznamenávania „%s“ Neplatný typ záznamu „%s“ Neplatná voľba Neplatná politika „%(policy)s“ pre „%(chain)s“ Neplatný port s protokolom „%s“ Neplatné porty v profile „%s“ Neplatná pozícia ' Neplatná pozícia „%d“ Neplatný profil Neplatný názov profilu Neplatný token „%s” Záznam vypnutý Záznam zapnutý Zaznamenávanie:  Chýba politika pre „%s“ Zmiešané verzie IP „od” a „do” Musíte uviesť „tcp“ alebo „udp“ s viacerými portami „%s“ vyžaduje „from“ alebo „to“ Vyžaduje sa klauzula „od” alebo „do” Nové profily: V profile „%s“ neboli nájdené žiadne porty Pre profil aplikácie neboli nájdené žiadne pravidlá Tu nie je voľba „log“ povolená Tu nie je voľba „log-all“ povolená Rozsahy portov musia byť číselné Port: Porty: Profil „%(fn)s“ nemá vyplnené povinné pole „%(f)s“ Profilu „%(fn)s“ chýba povinné pole „%(f)s“ Profil: %s
 Adresár profilov neexistuje Nezhoda protokolov (od/do) Nezhoda protokolov s určeným protokolom %s Všetky pravidlá sa vrátia na predinštalované hodnoty. Pokračovať (%(yes)s|%(no)s)?  Všetky pravidlá sa vrátia na predinštalované hodnoty. Príkaz môže narušiť prebiehajúce spojenia ssh. Pokračovať (%(yes)s|%(no)s)?  Pravidlo pridané Pravidlo sa zmenilo po normalizácii Pravidlo zmazané Pravidlo vložené Pravidlo aktualizované Pravidlá aktualizované Pravidlá aktualizované (v6) Pravidlá profilu „%s“ aktualizované Preskočené opätovné načítanie firewallu Preskakuje sa „%(value)s“: hodnota je príliš dlhá pre „%(field)s“ Preskakuje sa „%s“: tiež v /etc/services Preskakuje sa „%s“: nepodarilo sa spracovať Preskakuje sa „%s“: nepodarilo sa stat() Preskakuje sa „%s“: pole príliš dlhé Preskakuje sa „%s“: neplatný názov Preskakuje sa „%s“: názov príliš dlhý Preskakuje sa „%s“: príliš veľký Preskakuje sa „%s“: už bolo načítaných priveľa súborov Preskakuje sa aplikačné pravidlo IPv6. Vyžaduje iptables aspoň verzie 1.4 Preskakuje sa pridanie existujúceho pravidla Preskakuje sa vloženie existujúceho pravidla Preskakuje sa chybná n-tica (chybná dĺžka): %s Preskakuje sa chybná n-tica: %s Preskakuje sa nepodporované pravidlo IPv6 „%s” Statv: aktívny
%(log)s
%(pol)s
%(app)s%(status)s Stav: aktívny%s Stav: neaktívny Názov: %s
 Do Neznáma politika „%s“ Nepodaporovaná operácia „%s“ Nepodporovaná štandardná politika Nepodporovaný smer „%s“ Nepodporovaná politika „%s” Nepodporovaná politika pre smer „%s“ nepodporovaný protokol „%s” UPOZ: „%s“ je prístupný na zápis všetkým používateľom UPOZ: do „%s“ môžu zapisovať všetci používatelia Chybný počet argumentov Aby ste mohli spúšťať tento skript, musíte byť root n problém pri spúšťaní spúšťa sa ufw-init uid je %(uid)s ale „%(path)s“ vlastní %(st_uid)s neznáme a ano 