; Assembly translation of the following Java code:
; 
; package net.fijiaura.conputer.procedure;
; 
; import net.minecraftforge.fml.common.FMLCommonHandler;
; import net.minecraft.world.World;
; import net.minecraft.util.text.TextComponentString;
; import net.minecraft.util.DamageSource;
; import net.minecraft.server.MinecraftServer;
; import net.minecraft.entity.player.EntityPlayer;
; import net.minecraft.entity.effect.EntityLightningBolt;
; import net.minecraft.entity.Entity;
; import net.minecraft.client.gui.GuiTextField;
; 
; import net.fijiaura.conputer.ElementsConputerMod;
; 
; import java.util.Map;
; import java.util.HashMap;
; 
; import java.rmi.server.Operation;
; 
; @ElementsConputerMod.ModElement.Tag
; public class ProcedureCalculatorCalculate extends ElementsConputerMod.ModElement {
;     public ProcedureCalculatorCalculate(ElementsConputerMod instance) {
;         super(instance, 2);
;     }
; 
;     public static void executeProcedure(Map<String, Object> dependencies) {
;         if (dependencies.get("entity") == null) {
;             System.err.println("Failed to load dependency entity for procedure CalculatorCalculate!");
;             return;
;         }
;         if (dependencies.get("guistate") == null) {
;             System.err.println("Failed to load dependency guistate for procedure CalculatorCalculate!");
;             return;
;         }
;         if (dependencies.get("x") == null) {
;             System.err.println("Failed to load dependency x for procedure CalculatorCalculate!");
;             return;
;         }
;         if (dependencies.get("y") == null) {
;             System.err.println("Failed to load dependency y for procedure CalculatorCalculate!");
;             return;
;         }
;         if (dependencies.get("z") == null) {
;             System.err.println("Failed to load dependency z for procedure CalculatorCalculate!");
;             return;
;         }
;         if (dependencies.get("world") == null) {
;             System.err.println("Failed to load dependency world for procedure CalculatorCalculate!");
;             return;
;         }
;         Entity entity = (Entity) dependencies.get("entity");
;         HashMap guistate = (HashMap) dependencies.get("guistate");
;         int x = (int) dependencies.get("x");
;         int y = (int) dependencies.get("y");
;         int z = (int) dependencies.get("z");
;         World world = (World) dependencies.get("world");
;         double FirstNum = 0;
;         double SecondNum = 0;
;         String Operation = "";
;         FirstNum = (double) new Object() {
;             int convert(String s) {
;                 try {
;                     return Integer.parseInt(s.trim());
;                 } catch (Exception e) {
;                 }
;                 return 0;
;             }
;         }.convert((new Object() {
;             public String getText() {
;                 GuiTextField textField = (GuiTextField) guistate.get("text:firstnumber");
;                 if (textField != null) {
;                     return textField.getText();
;                 }
;                 return "";
;             }
;         }.getText()));
;         SecondNum = (double) new Object() {
;             int convert(String s) {
;                 try {
;                     return Integer.parseInt(s.trim());
;                 } catch (Exception e) {
;                 }
;                 return 0;
;             }
;         }.convert((new Object() {
;             public String getText() {
;                 GuiTextField textField = (GuiTextField) guistate.get("text:secondnumber");
;                 if (textField != null) {
;                     return textField.getText();
;                 }
;                 return "";
;             }
;         }.getText()));
;         if ((((Operation)).equals("Plus"))) {
;         } else if ((((Operation)).equals("Minus"))) {
;         } else if ((((Operation)).equals("Multiply"))) {
;         } else if ((((Operation)).equals("Divide"))) {
;             if (((SecondNum) == 0)) {
;                 System.out.println("Nice Try.");
;                 if (entity instanceof EntityPlayer && !entity.world.isRemote) {
;                     ((EntityPlayer) entity).sendStatusMessage(new TextComponentString("Nice Try."), (true));
;                 }
;                 {
;                     MinecraftServer mcserv = FMLCommonHandler.instance().getMinecraftServerInstance();
;                     if (mcserv != null)
;                         mcserv.getPlayerList().sendMessage(new TextComponentString("Look who tried to divide by zero!"));
;                 }
;                 world.addWeatherEffect(new EntityLightningBolt(world, (int) x, (int) y, (int) z, false));
;                 entity.attackEntityFrom(DamageSource.LIGHTNING_BOLT, (float) 42069);
;             } else {
;             }
;         }
;     }
; }
;
; NOTE: The following assembly code simulates the high‑level operations using fixed structure
; layouts for the dependency map and the guistate. Functions like atoi, strcmp, puts, and printf
; (from the C standard library) are used to mimic Java methods and output.
;
global ProcedureCalculatorCalculate
extern puts
extern printf
extern atoi
extern strcmp

section .data
    err_entity    db "Failed to load dependency entity for procedure CalculatorCalculate!",10,0
    err_guistate  db "Failed to load dependency guistate for procedure CalculatorCalculate!",10,0
    err_x         db "Failed to load dependency x for procedure CalculatorCalculate!",10,0
    err_y         db "Failed to load dependency y for procedure CalculatorCalculate!",10,0
    err_z         db "Failed to load dependency z for procedure CalculatorCalculate!",10,0
    err_world     db "Failed to load dependency world for procedure CalculatorCalculate!",10,0

    nice_try      db "Nice Try.",10,0
    div_warning   db "Look who tried to divide by zero!",10,0
    lightning_fmt db "Lightning effect added at (%d, %d, %d).",10,0
    damage_fmt    db "Entity attacked with lightning bolt: %d damage.",10,0

    plus_str      db "Plus",0
    minus_str     db "Minus",0
    multiply_str  db "Multiply",0
    divide_str    db "Divide",0
    empty_str     db "",0

section .bss
; (No additional uninitialized data needed)

section .text

; ProcedureCalculatorCalculate corresponds to:
; public static void executeProcedure(Map<String, Object> dependencies)
; For this translation, we assume that the 'dependencies' pointer (in rdi) points to a structure
; with fixed offsets:
;   offset 0: entity (pointer)
;   offset 8: guistate (pointer to a struct with two fields)
;   offset 16: x (int)
;   offset 24: y (int)
;   offset 32: z (int)
;   offset 40: world (pointer)
ProcedureCalculatorCalculate:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 32         ; Allocate local stack space

    ; if (dependencies.get("entity") == null) { print error and return; }
    mov     rax, [rdi]      ; Load entity from dependencies offset 0
    test    rax, rax
    jne     .check_guistate
    lea     rdi, [rel err_entity]
    call    puts
    jmp     .end_function

.check_guistate:
    mov     rax, [rdi+8]    ; Load guistate from offset 8
    test    rax, rax
    jne     .check_x
    lea     rdi, [rel err_guistate]
    call    puts
    jmp     .end_function

.check_x:
    mov     rax, [rdi+16]   ; Load x from offset 16
    test    rax, rax
    jne     .check_y
    lea     rdi, [rel err_x]
    call    puts
    jmp     .end_function

.check_y:
    mov     rax, [rdi+24]   ; Load y from offset 24
    test    rax, rax
    jne     .check_z
    lea     rdi, [rel err_y]
    call    puts
    jmp     .end_function

.check_z:
    mov     rax, [rdi+32]   ; Load z from offset 32
    test    rax, rax
    jne     .check_world
    lea     rdi, [rel err_z]
    call    puts
    jmp     .end_function

.check_world:
    mov     rax, [rdi+40]   ; Load world from offset 40
    test    rax, rax
    jne     .dependencies_ok
    lea     rdi, [rel err_world]
    call    puts
    jmp     .end_function

.dependencies_ok:
    ; Save dependencies for local use.
    ; entity in rbx, guistate in rcx
    mov     rbx, [rdi]      ; entity
    mov     rcx, [rdi+8]    ; guistate
    ; x, y, z and world stored from dependencies.
    mov     eax, [rdi+16]   ; x (as 32-bit integer)
    mov     [rbp-4], eax    ; Store x locally at [rbp-4]
    mov     eax, [rdi+24]   ; y
    mov     [rbp-8], eax    ; Store y locally at [rbp-8]
    mov     eax, [rdi+32]   ; z
    mov     [rbp-12], eax   ; Store z locally at [rbp-12]
    mov     rdx, [rdi+40]   ; world pointer in rdx for later use

    ; Initialize local variables:
    ; double FirstNum, double SecondNum and String Operation = "";
    ; We reserve FirstNum at [rbp-32] (8 bytes), SecondNum at [rbp-24] (8 bytes),
    ; and Operation pointer at [rbp-16] (8 bytes).
    lea     rax, [rel empty_str]
    mov     [rbp-16], rax  ; Operation = ""

    ; FirstNum = convert( (getText() from guistate "text:firstnumber") );
    ; Simulate getText() by retrieving pointer from guistate offset 0.
    mov     rax, [rcx+0]
    test    rax, rax
    jne     .got_first_text
    lea     rax, [rel empty_str]
.got_first_text:
    mov     rdi, rax        ; Argument: pointer to first number text
    call    atoi            ; Convert text to int
    ; Convert int to double and store in FirstNum ([rbp-32]).
    cvtsi2sd xmm0, eax
    movsd  qword [rbp-32], xmm0

    ; SecondNum = convert( (getText() from guistate "text:secondnumber") );
    ; Simulate getText() by retrieving pointer from guistate offset 8.
    mov     rax, [rcx+8]
    test    rax, rax
    jne     .got_second_text
    lea     rax, [rel empty_str]
.got_second_text:
    mov     rdi, rax        ; Argument: pointer to second number text
    call    atoi            ; Convert text to int
    cvtsi2sd xmm0, eax
    movsd  qword [rbp-24], xmm0

    ; The String Operation remains as "" (empty).
    ; Begin conditional blocks:
    ; if (Operation.equals("Plus"))
    mov     rax, [rbp-16]   ; Load Operation pointer
    push    rdi             ; Save rdi
    lea     rdi, [rel plus_str]
    mov     rsi, rax
    call    strcmp
    add     rsp, 8
    cmp     eax, 0
    je      .plus_block

    ; else if (Operation.equals("Minus"))
    mov     rax, [rbp-16]
    push    rdi
    lea     rdi, [rel minus_str]
    mov     rsi, rax
    call    strcmp
    add     rsp, 8
    cmp     eax, 0
    je      .minus_block

    ; else if (Operation.equals("Multiply"))
    mov     rax, [rbp-16]
    push    rdi
    lea     rdi, [rel multiply_str]
    mov     rsi, rax
    call    strcmp
    add     rsp, 8
    cmp     eax, 0
    je      .multiply_block

    ; else if (Operation.equals("Divide"))
    mov     rax, [rbp-16]
    push    rdi
    lea     rdi, [rel divide_str]
    mov     rsi, rax
    call    strcmp
    add     rsp, 8
    cmp     eax, 0
    jne     .end_procedure      ; If not "Divide", do nothing

.divide_block:
    ; if (SecondNum == 0)
    movsd   xmm0, qword [rbp-24]  ; Load SecondNum
    xorps   xmm1, xmm1            ; Set xmm1 to 0.0
    ucomisd xmm0, xmm1
    jne     .divide_nonzero       ; If not equal to 0.0, jump to else block
    ; then:
    ; System.out.println("Nice Try.");
    lea     rdi, [rel nice_try]
    call    puts
    ; if (entity instanceof EntityPlayer && !entity.world.isRemote)
    ; Simulated by printing the same message.
    lea     rdi, [rel nice_try]
    call    puts
    ; Send message: "Look who tried to divide by zero!"
    lea     rdi, [rel div_warning]
    call    puts
    ; world.addWeatherEffect(new EntityLightningBolt(world, x, y, z, false));
    ; Simulate by printing the lightning effect with x, y, and z.
    mov     eax, [rbp-4]         ; x value
    mov     esi, eax
    mov     eax, [rbp-8]         ; y value
    mov     edx, eax
    mov     eax, [rbp-12]        ; z value
    mov     ecx, eax
    lea     rdi, [rel lightning_fmt]
    mov     rsi, [rbp-4]         ; x
    mov     rdx, [rbp-8]         ; y
    mov     rcx, [rbp-12]        ; z
    call    printf
    ; entity.attackEntityFrom(DamageSource.LIGHTNING_BOLT, (float)42069);
    ; Simulate by printing a damage message with damage value 42069.
    lea     rdi, [rel damage_fmt]
    mov     esi, 42069
    call    printf
    jmp     .end_procedure

.divide_nonzero:
    ; Else block for "Divide" when SecondNum != 0 (empty as per original code)
    jmp     .end_procedure

.plus_block:
    ; Empty block for "Plus"
    jmp     .end_procedure

.minus_block:
    ; Empty block for "Minus"
    jmp     .end_procedure

.multiply_block:
    ; Empty block for "Multiply"
    jmp     .end_procedure

.end_procedure:
    ; End of conditional blocks
.end_function:
    mov     rsp, rbp
    pop     rbp
    ret
