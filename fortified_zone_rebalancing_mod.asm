; Fortified Zone / Ikari no Yousai Rebalancing mod
; by Marc Robledo @marc_robledo 2025


SECTION "Bank 1 - Set initial player variables", ROMX[$7f89], BANK[1]
set_initial_player_variables: ;callen when starting stage 1 in both single and multiplayer
	ld		a, 0
	ld		[$d400], a ;keys P1
	ld		[$d401], a ;keys P2
	ld		[$d402], a ;missiles P1
	ld		[$d403], a ;missiles P2

	ld		a, 0 + 3 ;start with 3 medicines
	ld		[$d404], a ;medicine P1
	ld		[$d405], a ;medicine P2

	ld		a, 3 + 1 ;increase initial max health by 1
	ld		[$c10d], a ;current health P1
	ld		[$c12d], a ;current health P2
	ldh		[$ffc2], a ;max health P1
	ldh		[$ffd2], a ;max health P2
	;...