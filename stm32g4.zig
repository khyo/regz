const micro = @import("microzig");
const mmio = micro.mmio;

pub const devices = struct {
    ///  STM32G474xx
    pub const STM32G474xx = struct {
        pub const properties = struct {
            pub const @"cpu.endian" = "little";
            pub const @"cpu.mpuPresent" = "true";
            pub const @"cpu.revision" = "r0p1";
            pub const @"cpu.name" = "CM4";
            pub const @"cpu.nvicPrioBits" = "4";
            pub const @"cpu.vendorSystickConfig" = "false";
            pub const @"cpu.fpuPresent" = "true";
        };

        pub const VectorTable = extern struct {
            const Handler = micro.interrupt.Handler;
            const unhandled = micro.interrupt.unhandled;

            initial_stack_pointer: u32,
            Reset: Handler = unhandled,
            NMI: Handler = unhandled,
            HardFault: Handler = unhandled,
            MemManageFault: Handler = unhandled,
            BusFault: Handler = unhandled,
            UsageFault: Handler = unhandled,
            reserved5: [4]u32 = undefined,
            SVCall: Handler = unhandled,
            reserved10: [2]u32 = undefined,
            PendSV: Handler = unhandled,
            SysTick: Handler = unhandled,
            ///  Window Watchdog interrupt
            WWDG: Handler = unhandled,
            ///  PVD through EXTI line detection
            PVD_PVM: Handler = unhandled,
            ///  RTC_TAMP_CSS_LSE
            RTC_TAMP_CSS_LSE: Handler = unhandled,
            ///  RTC Wakeup timer
            RTC_WKUP: Handler = unhandled,
            ///  FLASH
            FLASH: Handler = unhandled,
            ///  RCC
            RCC: Handler = unhandled,
            ///  EXTI Line0 interrupt
            EXTI0: Handler = unhandled,
            ///  EXTI Line1 interrupt
            EXTI1: Handler = unhandled,
            ///  EXTI Line2 interrupt
            EXTI2: Handler = unhandled,
            ///  EXTI Line3 interrupt
            EXTI3: Handler = unhandled,
            ///  EXTI Line4 interrupt
            EXTI4: Handler = unhandled,
            ///  DMA1 channel 1 interrupt
            DMA1_CH1: Handler = unhandled,
            ///  DMA1 channel 2 interrupt
            DMA1_CH2: Handler = unhandled,
            ///  DMA1 channel 3 interrupt
            DMA1_CH3: Handler = unhandled,
            ///  DMA1 channel 4 interrupt
            DMA1_CH4: Handler = unhandled,
            ///  DMA1 channel 5 interrupt
            DMA1_CH5: Handler = unhandled,
            ///  DMA1 channel 6 interrupt
            DMA1_CH6: Handler = unhandled,
            ///  DMA1 channel 7 interrupt
            DMA1_CH7: Handler = unhandled,
            ///  ADC1 and ADC2 global interrupt
            ADC1_2: Handler = unhandled,
            ///  USB_HP
            USB_HP: Handler = unhandled,
            ///  USB_LP
            USB_LP: Handler = unhandled,
            ///  fdcan1_intr1_it
            fdcan1_intr1_it: Handler = unhandled,
            ///  fdcan1_intr0_it
            fdcan1_intr0_it: Handler = unhandled,
            ///  EXTI9_5
            EXTI9_5: Handler = unhandled,
            ///  TIM1_BRK_TIM15
            TIM1_BRK_TIM15: Handler = unhandled,
            ///  TIM1_UP_TIM16
            TIM1_UP_TIM16: Handler = unhandled,
            ///  TIM1_TRG_COM/
            TIM1_TRG_COM: Handler = unhandled,
            ///  TIM1 capture compare interrupt
            TIM1_CC: Handler = unhandled,
            ///  TIM2
            TIM2: Handler = unhandled,
            ///  TIM3
            TIM3: Handler = unhandled,
            ///  TIM4
            TIM4: Handler = unhandled,
            ///  I2C1_EV
            I2C1_EV: Handler = unhandled,
            ///  I2C1_ER
            I2C1_ER: Handler = unhandled,
            ///  I2C2_EV
            I2C2_EV: Handler = unhandled,
            ///  I2C2_ER
            I2C2_ER: Handler = unhandled,
            ///  SPI1
            SPI1: Handler = unhandled,
            ///  SPI2
            SPI2: Handler = unhandled,
            ///  USART1
            USART1: Handler = unhandled,
            ///  USART2
            USART2: Handler = unhandled,
            ///  USART3
            USART3: Handler = unhandled,
            ///  EXTI15_10
            EXTI15_10: Handler = unhandled,
            ///  RTC_ALARM
            RTC_ALARM: Handler = unhandled,
            ///  USBWakeUP
            USBWakeUP: Handler = unhandled,
            ///  TIM8_BRK
            TIM8_BRK: Handler = unhandled,
            ///  TIM8_UP
            TIM8_UP: Handler = unhandled,
            ///  TIM8_TRG_COM
            TIM8_TRG_COM: Handler = unhandled,
            ///  TIM8_CC
            TIM8_CC: Handler = unhandled,
            ///  ADC3
            ADC3: Handler = unhandled,
            ///  FMC
            FMC: Handler = unhandled,
            ///  LPTIM1
            LPTIM1: Handler = unhandled,
            ///  TIM5
            TIM5: Handler = unhandled,
            ///  SPI3
            SPI3: Handler = unhandled,
            ///  UART4
            UART4: Handler = unhandled,
            ///  UART5
            UART5: Handler = unhandled,
            ///  TIM6_DACUNDER
            TIM6_DACUNDER: Handler = unhandled,
            ///  TIM7
            TIM7: Handler = unhandled,
            ///  DMA2_CH1
            DMA2_CH1: Handler = unhandled,
            ///  DMA2_CH2
            DMA2_CH2: Handler = unhandled,
            ///  DMA2_CH3
            DMA2_CH3: Handler = unhandled,
            ///  DMA2_CH4
            DMA2_CH4: Handler = unhandled,
            ///  DMA2_CH5
            DMA2_CH5: Handler = unhandled,
            ///  ADC4
            ADC4: Handler = unhandled,
            ///  ADC5
            ADC5: Handler = unhandled,
            ///  UCPD1
            UCPD1: Handler = unhandled,
            ///  COMP1_2_3
            COMP1_2_3: Handler = unhandled,
            ///  COMP4_5_6
            COMP4_5_6: Handler = unhandled,
            ///  COMP7
            COMP7: Handler = unhandled,
            ///  HRTIM_Master_IRQn
            HRTIM_Master_IRQn: Handler = unhandled,
            ///  HRTIM_TIMA_IRQn
            HRTIM_TIMA_IRQn: Handler = unhandled,
            ///  HRTIM_TIMB_IRQn
            HRTIM_TIMB_IRQn: Handler = unhandled,
            ///  HRTIM_TIMC_IRQn
            HRTIM_TIMC_IRQn: Handler = unhandled,
            ///  HRTIM_TIMD_IRQn
            HRTIM_TIMD_IRQn: Handler = unhandled,
            ///  HRTIM_TIME_IRQn
            HRTIM_TIME_IRQn: Handler = unhandled,
            ///  HRTIM_TIM_FLT_IRQn
            HRTIM_TIM_FLT_IRQn: Handler = unhandled,
            ///  HRTIM_TIMF_IRQn
            HRTIM_TIMF_IRQn: Handler = unhandled,
            ///  CRS
            CRS: Handler = unhandled,
            ///  SAI
            SAI: Handler = unhandled,
            ///  TIM20_BRK
            TIM20_BRK: Handler = unhandled,
            ///  TIM20_UP
            TIM20_UP: Handler = unhandled,
            ///  TIM20_TRG_COM
            TIM20_TRG_COM: Handler = unhandled,
            ///  TIM20_CC
            TIM20_CC: Handler = unhandled,
            ///  Floating point unit interrupt
            FPU: Handler = unhandled,
            ///  I2C4_EV
            I2C4_EV: Handler = unhandled,
            ///  I2C4_ER
            I2C4_ER: Handler = unhandled,
            ///  SPI4
            SPI4: Handler = unhandled,
            reserved99: [1]u32 = undefined,
            ///  FDCAN2_intr0
            FDCAN2_intr0: Handler = unhandled,
            ///  FDCAN2_intr1
            FDCAN2_intr1: Handler = unhandled,
            ///  FDCAN3_intr0
            FDCAN3_intr0: Handler = unhandled,
            ///  FDCAN3_intr1
            FDCAN3_intr1: Handler = unhandled,
            ///  RNG
            RNG: Handler = unhandled,
            ///  LPUART
            LPUART: Handler = unhandled,
            ///  I2C3_EV
            I2C3_EV: Handler = unhandled,
            ///  I2C3_ER
            I2C3_ER: Handler = unhandled,
            ///  DMAMUX_OVR
            DMAMUX_OVR: Handler = unhandled,
            ///  QUADSPI
            QUADSPI: Handler = unhandled,
            ///  DMA1_CH8
            DMA1_CH8: Handler = unhandled,
            ///  DMA2_CH6
            DMA2_CH6: Handler = unhandled,
            ///  DMA2_CH7
            DMA2_CH7: Handler = unhandled,
            ///  DMA2_CH8
            DMA2_CH8: Handler = unhandled,
            ///  Cordic
            Cordic: Handler = unhandled,
            ///  FMAC
            FMAC: Handler = unhandled,
        };

        pub const peripherals = struct {
            ///  Advanced-timers
            pub const TIM2 = @as(*volatile types.peripherals.TIM2, @ptrFromInt(0x40000000));
            ///  Advanced-timers
            pub const TIM3 = @as(*volatile types.peripherals.TIM2, @ptrFromInt(0x40000400));
            ///  Advanced-timers
            pub const TIM4 = @as(*volatile types.peripherals.TIM2, @ptrFromInt(0x40000800));
            ///  Advanced-timers
            pub const TIM5 = @as(*volatile types.peripherals.TIM2, @ptrFromInt(0x40000c00));
            ///  Basic-timers
            pub const TIM6 = @as(*volatile types.peripherals.TIM6, @ptrFromInt(0x40001000));
            ///  Basic-timers
            pub const TIM7 = @as(*volatile types.peripherals.TIM6, @ptrFromInt(0x40001400));
            ///  CRS
            pub const CRS = @as(*volatile types.peripherals.CRS, @ptrFromInt(0x40002000));
            ///  Tamper and backup registers
            pub const TAMP = @as(*volatile types.peripherals.TAMP, @ptrFromInt(0x40002400));
            ///  Real-time clock
            pub const RTC = @as(*volatile types.peripherals.RTC, @ptrFromInt(0x40002800));
            ///  WinWATCHDOG
            pub const WWDG = @as(*volatile types.peripherals.WWDG, @ptrFromInt(0x40002c00));
            ///  System window watchdog
            pub const IWDG = @as(*volatile types.peripherals.IWDG, @ptrFromInt(0x40003000));
            ///  Serial peripheral interface/Inter-IC sound
            pub const SPI2 = @as(*volatile types.peripherals.SPI4, @ptrFromInt(0x40003800));
            ///  Serial peripheral interface/Inter-IC sound
            pub const SPI3 = @as(*volatile types.peripherals.SPI4, @ptrFromInt(0x40003c00));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART2 = @as(*volatile types.peripherals.USART1, @ptrFromInt(0x40004400));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART3 = @as(*volatile types.peripherals.USART1, @ptrFromInt(0x40004800));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const UART4 = @as(*volatile types.peripherals.UART4, @ptrFromInt(0x40004c00));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const UART5 = @as(*volatile types.peripherals.UART4, @ptrFromInt(0x40005000));
            ///  Inter-integrated circuit
            pub const I2C1 = @as(*volatile types.peripherals.I2C1, @ptrFromInt(0x40005400));
            ///  Inter-integrated circuit
            pub const I2C2 = @as(*volatile types.peripherals.I2C1, @ptrFromInt(0x40005800));
            ///  USB_FS_device
            pub const USB_FS_device = @as(*volatile types.peripherals.USB_FS_device, @ptrFromInt(0x40005c00));
            ///  FDCAN
            pub const FDCAN1 = @as(*volatile types.peripherals.FDCAN, @ptrFromInt(0x40006400));
            ///  FDCAN
            pub const FDCAN2 = @as(*volatile types.peripherals.FDCAN, @ptrFromInt(0x40006800));
            ///  FDCAN
            pub const FDCAN3 = @as(*volatile types.peripherals.FDCAN, @ptrFromInt(0x40006c00));
            ///  Power control
            pub const PWR = @as(*volatile types.peripherals.PWR, @ptrFromInt(0x40007000));
            ///  Inter-integrated circuit
            pub const I2C3 = @as(*volatile types.peripherals.I2C1, @ptrFromInt(0x40007800));
            ///  Low power timer
            pub const LPTIMER1 = @as(*volatile types.peripherals.LPTIMER1, @ptrFromInt(0x40007c00));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const LPUART1 = @as(*volatile types.peripherals.LPUART1, @ptrFromInt(0x40008000));
            ///  Inter-integrated circuit
            pub const I2C4 = @as(*volatile types.peripherals.I2C1, @ptrFromInt(0x40008400));
            ///  UCPD1
            pub const UCPD1 = @as(*volatile types.peripherals.UCPD1, @ptrFromInt(0x4000a000));
            ///  FDCAN
            pub const FDCAN = @as(*volatile types.peripherals.FDCAN, @ptrFromInt(0x4000a400));
            ///  System configuration controller
            pub const SYSCFG = @as(*volatile types.peripherals.SYSCFG, @ptrFromInt(0x40010000));
            ///  Voltage reference buffer
            pub const VREFBUF = @as(*volatile types.peripherals.VREFBUF, @ptrFromInt(0x40010030));
            ///  Comparator control and status register
            pub const COMP = @as(*volatile types.peripherals.COMP, @ptrFromInt(0x40010200));
            ///  Operational amplifiers
            pub const OPAMP = @as(*volatile types.peripherals.OPAMP, @ptrFromInt(0x40010300));
            ///  External interrupt/event controller
            pub const EXTI = @as(*volatile types.peripherals.EXTI, @ptrFromInt(0x40010400));
            ///  Advanced-timers
            pub const TIM1 = @as(*volatile types.peripherals.TIM1, @ptrFromInt(0x40012c00));
            ///  Serial peripheral interface/Inter-IC sound
            pub const SPI1 = @as(*volatile types.peripherals.SPI1, @ptrFromInt(0x40013000));
            ///  Advanced-timers
            pub const TIM8 = @as(*volatile types.peripherals.TIM1, @ptrFromInt(0x40013400));
            ///  Universal synchronous asynchronous receiver transmitter
            pub const USART1 = @as(*volatile types.peripherals.USART1, @ptrFromInt(0x40013800));
            ///  Serial peripheral interface/Inter-IC sound
            pub const SPI4 = @as(*volatile types.peripherals.SPI4, @ptrFromInt(0x40013c00));
            ///  General purpose timers
            pub const TIM15 = @as(*volatile types.peripherals.TIM15, @ptrFromInt(0x40014000));
            ///  General purpose timers
            pub const TIM16 = @as(*volatile types.peripherals.TIM16, @ptrFromInt(0x40014400));
            ///  General purpose timers
            pub const TIM17 = @as(*volatile types.peripherals.TIM16, @ptrFromInt(0x40014800));
            ///  Advanced-timers
            pub const TIM20 = @as(*volatile types.peripherals.TIM1, @ptrFromInt(0x40015000));
            ///  Serial audio interface
            pub const SAI = @as(*volatile types.peripherals.SAI, @ptrFromInt(0x40015400));
            ///  High Resolution Timer: Master Timers
            pub const HRTIM_Master = @as(*volatile types.peripherals.HRTIM_Master, @ptrFromInt(0x40016800));
            ///  High Resolution Timer: TIMA
            pub const HRTIM_TIMA = @as(*volatile types.peripherals.HRTIM_TIMA, @ptrFromInt(0x40016880));
            ///  High Resolution Timer: TIMB
            pub const HRTIM_TIMB = @as(*volatile types.peripherals.HRTIM_TIMB, @ptrFromInt(0x40016900));
            ///  High Resolution Timer: TIMC
            pub const HRTIM_TIMC = @as(*volatile types.peripherals.HRTIM_TIMC, @ptrFromInt(0x40016980));
            ///  High Resolution Timer: TIMD
            pub const HRTIM_TIMD = @as(*volatile types.peripherals.HRTIM_TIMD, @ptrFromInt(0x40016a00));
            ///  High Resolution Timer: TIME
            pub const HRTIM_TIME = @as(*volatile types.peripherals.HRTIM_TIME, @ptrFromInt(0x40016a80));
            ///  High Resolution Timer: TIMF
            pub const HRTIM_TIMF = @as(*volatile types.peripherals.HRTIM_TIMF, @ptrFromInt(0x40016b00));
            ///  High Resolution Timer: Common functions
            pub const HRTIM_Common = @as(*volatile types.peripherals.HRTIM_Common, @ptrFromInt(0x40016b80));
            ///  DMA controller
            pub const DMA1 = @as(*volatile types.peripherals.DMA1, @ptrFromInt(0x40020000));
            ///  DMA controller
            pub const DMA2 = @as(*volatile types.peripherals.DMA1, @ptrFromInt(0x40020400));
            ///  DMAMUX
            pub const DMAMUX = @as(*volatile types.peripherals.DMAMUX, @ptrFromInt(0x40020800));
            ///  CORDIC Co-processor
            pub const CORDIC = @as(*volatile types.peripherals.CORDIC, @ptrFromInt(0x40020c00));
            ///  Reset and clock control
            pub const RCC = @as(*volatile types.peripherals.RCC, @ptrFromInt(0x40021000));
            ///  Filter Math Accelerator
            pub const FMAC = @as(*volatile types.peripherals.FMAC, @ptrFromInt(0x40021400));
            ///  Flash
            pub const FLASH = @as(*volatile types.peripherals.FLASH, @ptrFromInt(0x40022000));
            ///  Cyclic redundancy check calculation unit
            pub const CRC = @as(*volatile types.peripherals.CRC, @ptrFromInt(0x40023000));
            ///  General-purpose I/Os
            pub const GPIOA = @as(*volatile types.peripherals.GPIOA, @ptrFromInt(0x48000000));
            ///  General-purpose I/Os
            pub const GPIOB = @as(*volatile types.peripherals.GPIOB, @ptrFromInt(0x48000400));
            ///  General-purpose I/Os
            pub const GPIOC = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x48000800));
            ///  General-purpose I/Os
            pub const GPIOD = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x48000c00));
            ///  General-purpose I/Os
            pub const GPIOE = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x48001000));
            ///  General-purpose I/Os
            pub const GPIOF = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x48001400));
            ///  General-purpose I/Os
            pub const GPIOG = @as(*volatile types.peripherals.GPIOC, @ptrFromInt(0x48001800));
            ///  Analog-to-Digital Converter
            pub const ADC1 = @as(*volatile types.peripherals.ADC1, @ptrFromInt(0x50000000));
            ///  Analog-to-Digital Converter
            pub const ADC2 = @as(*volatile types.peripherals.ADC1, @ptrFromInt(0x50000100));
            ///  Analog-to-Digital Converter
            pub const ADC12_Common = @as(*volatile types.peripherals.ADC12_Common, @ptrFromInt(0x50000200));
            ///  Analog-to-Digital Converter
            pub const ADC3 = @as(*volatile types.peripherals.ADC3, @ptrFromInt(0x50000400));
            ///  Analog-to-Digital Converter
            pub const ADC4 = @as(*volatile types.peripherals.ADC1, @ptrFromInt(0x50000500));
            ///  Analog-to-Digital Converter
            pub const ADC5 = @as(*volatile types.peripherals.ADC3, @ptrFromInt(0x50000600));
            ///  Analog-to-Digital Converter
            pub const ADC345_Common = @as(*volatile types.peripherals.ADC12_Common, @ptrFromInt(0x50000700));
            ///  Digital-to-analog converter
            pub const DAC1 = @as(*volatile types.peripherals.DAC1, @ptrFromInt(0x50000800));
            ///  Digital-to-analog converter
            pub const DAC2 = @as(*volatile types.peripherals.DAC1, @ptrFromInt(0x50000c00));
            ///  Digital-to-analog converter
            pub const DAC3 = @as(*volatile types.peripherals.DAC1, @ptrFromInt(0x50001000));
            ///  Digital-to-analog converter
            pub const DAC4 = @as(*volatile types.peripherals.DAC1, @ptrFromInt(0x50001400));
            ///  Random number generator
            pub const RNG = @as(*volatile types.peripherals.RNG, @ptrFromInt(0x50060800));
            ///  Flexible memory controller
            pub const FMC = @as(*volatile types.peripherals.FMC, @ptrFromInt(0xa0000000));
            ///  QuadSPI interface
            pub const QUADSPI = @as(*volatile types.peripherals.QUADSPI, @ptrFromInt(0xa0001000));
            ///  System control block ACTLR
            pub const SCB_ACTRL = @as(*volatile types.peripherals.SCB_ACTRL, @ptrFromInt(0xe000e008));
            ///  SysTick timer
            pub const STK = @as(*volatile types.peripherals.STK, @ptrFromInt(0xe000e010));
            ///  System control block
            pub const SCB = @as(*volatile types.peripherals.SCB, @ptrFromInt(0xe000e040));
            ///  Memory protection unit
            pub const MPU = @as(*volatile types.peripherals.MPU, @ptrFromInt(0xe000e084));
            ///  Nested Vectored Interrupt Controller
            pub const NVIC = @as(*volatile types.peripherals.NVIC, @ptrFromInt(0xe000e100));
            ///  Floating point unit CPACR
            pub const FPU_CPACR = @as(*volatile types.peripherals.FPU_CPACR, @ptrFromInt(0xe000ef08));
            ///  Floting point unit
            pub const FPU = @as(*volatile types.peripherals.FPU, @ptrFromInt(0xe000ef34));
            ///  Debug support
            pub const DBGMCU = @as(*volatile types.peripherals.DBGMCU, @ptrFromInt(0xe0042000));
        };
    };
};

pub const types = struct {
    pub const peripherals = struct {
        ///  Cyclic redundancy check calculation unit
        pub const CRC = extern struct {
            ///  Data register
            DR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFFF
                ///  Data register bits
                DR: u32 = 0xFFFFFFFF,
            }),
            ///  Independent data register
            IDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  General-purpose 8-bit data register bits
                IDR: u32 = 0x0,
            }),
            ///  Control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RESET bit
                RESET: u1 = 0x0,
                reserved3: u2 = 0x0,
                ///  Polynomial size
                POLYSIZE: u2 = 0x0,
                ///  Reverse input data
                REV_IN: u2 = 0x0,
                ///  Reverse output data
                REV_OUT: u1 = 0x0,
                padding: u24 = 0x0,
            }),
            reserved16: [4]u8,
            ///  Initial CRC value
            INIT: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFFF
                ///  Programmable initial CRC value
                CRC_INIT: u32 = 0xFFFFFFFF,
            }),
            ///  polynomial
            POL: mmio.Mmio(packed struct(u32) { // reset_value: 0x4C11DB7
                ///  Programmable polynomial
                POL: u32 = 0x4C11DB7,
            }),
        };

        ///  WinWATCHDOG
        pub const WWDG = extern struct {
            ///  Key register
            KR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Key value (write only, read 0x0000)
                KEY: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Prescaler register
            PR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Prescaler divider
                PR: u3 = 0x0,
                padding: u29 = 0x0,
            }),
            ///  Reload register
            RLR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFF
                ///  Watchdog counter reload value
                RL: u12 = 0xFFF,
                padding: u20 = 0x0,
            }),
            ///  Status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Watchdog prescaler value update
                PVU: u1 = 0x0,
                ///  Watchdog counter reload value update
                RVU: u1 = 0x0,
                ///  Watchdog counter window value update
                WVU: u1 = 0x0,
                padding: u29 = 0x0,
            }),
            ///  Window register
            WINR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFF
                ///  Watchdog counter window value
                WIN: u12 = 0xFFF,
                padding: u20 = 0x0,
            }),
        };

        ///  System window watchdog
        pub const IWDG = extern struct {
            ///  Control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x7F
                ///  7-bit counter (MSB to LSB)
                T: u7 = 0x7F,
                ///  Activation bit
                WDGA: u1 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Configuration register
            CFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x7F
                ///  7-bit window value
                W: u7 = 0x7F,
                reserved9: u2 = 0x0,
                ///  Early wakeup interrupt
                EWI: u1 = 0x0,
                reserved11: u1 = 0x0,
                ///  Timer base
                WDGTB: u3 = 0x0,
                padding: u18 = 0x0,
            }),
            ///  Status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Early wakeup interrupt flag
                EWIF: u1 = 0x0,
                padding: u31 = 0x0,
            }),
        };

        ///  Inter-integrated circuit
        pub const I2C1 = extern struct {
            ///  Control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Peripheral enable
                PE: u1 = 0x0,
                ///  TX Interrupt enable
                TXIE: u1 = 0x0,
                ///  RX Interrupt enable
                RXIE: u1 = 0x0,
                ///  Address match interrupt enable (slave only)
                ADDRIE: u1 = 0x0,
                ///  Not acknowledge received interrupt enable
                NACKIE: u1 = 0x0,
                ///  STOP detection Interrupt enable
                STOPIE: u1 = 0x0,
                ///  Transfer Complete interrupt enable
                TCIE: u1 = 0x0,
                ///  Error interrupts enable
                ERRIE: u1 = 0x0,
                ///  Digital noise filter
                DNF: u4 = 0x0,
                ///  Analog noise filter OFF
                ANFOFF: u1 = 0x0,
                reserved14: u1 = 0x0,
                ///  DMA transmission requests enable
                TXDMAEN: u1 = 0x0,
                ///  DMA reception requests enable
                RXDMAEN: u1 = 0x0,
                ///  Slave byte control
                SBC: u1 = 0x0,
                ///  Clock stretching disable
                NOSTRETCH: u1 = 0x0,
                ///  Wakeup from STOP enable
                WUPEN: u1 = 0x0,
                ///  General call enable
                GCEN: u1 = 0x0,
                ///  SMBus Host address enable
                SMBHEN: u1 = 0x0,
                ///  SMBus Device Default address enable
                SMBDEN: u1 = 0x0,
                ///  SMBUS alert enable
                ALERTEN: u1 = 0x0,
                ///  PEC enable
                PECEN: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Slave address bit (master mode)
                SADD: u10 = 0x0,
                ///  Transfer direction (master mode)
                RD_WRN: u1 = 0x0,
                ///  10-bit addressing mode (master mode)
                ADD10: u1 = 0x0,
                ///  10-bit address header only read direction (master receiver mode)
                HEAD10R: u1 = 0x0,
                ///  Start generation
                START: u1 = 0x0,
                ///  Stop generation (master mode)
                STOP: u1 = 0x0,
                ///  NACK generation (slave mode)
                NACK: u1 = 0x0,
                ///  Number of bytes
                NBYTES: u8 = 0x0,
                ///  NBYTES reload mode
                RELOAD: u1 = 0x0,
                ///  Automatic end mode (master mode)
                AUTOEND: u1 = 0x0,
                ///  Packet error checking byte
                PECBYTE: u1 = 0x0,
                padding: u5 = 0x0,
            }),
            ///  Own address register 1
            OAR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Interface address
                OA1: u10 = 0x0,
                ///  Own Address 1 10-bit mode
                OA1MODE: u1 = 0x0,
                reserved15: u4 = 0x0,
                ///  Own Address 1 enable
                OA1EN: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Own address register 2
            OAR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Interface address
                OA2: u7 = 0x0,
                ///  Own Address 2 masks
                OA2MSK: u3 = 0x0,
                reserved15: u4 = 0x0,
                ///  Own Address 2 enable
                OA2EN: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timing register
            TIMINGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SCL low period (master mode)
                SCLL: u8 = 0x0,
                ///  SCL high period (master mode)
                SCLH: u8 = 0x0,
                ///  Data hold time
                SDADEL: u4 = 0x0,
                ///  Data setup time
                SCLDEL: u4 = 0x0,
                reserved28: u4 = 0x0,
                ///  Timing prescaler
                PRESC: u4 = 0x0,
            }),
            ///  Status register 1
            TIMEOUTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Bus timeout A
                TIMEOUTA: u12 = 0x0,
                ///  Idle clock timeout detection
                TIDLE: u1 = 0x0,
                reserved15: u2 = 0x0,
                ///  Clock timeout enable
                TIMOUTEN: u1 = 0x0,
                ///  Bus timeout B
                TIMEOUTB: u12 = 0x0,
                reserved31: u3 = 0x0,
                ///  Extended clock timeout enable
                TEXTEN: u1 = 0x0,
            }),
            ///  Interrupt and Status register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x1
                ///  Transmit data register empty (transmitters)
                TXE: u1 = 0x1,
                ///  Transmit interrupt status (transmitters)
                TXIS: u1 = 0x0,
                ///  Receive data register not empty (receivers)
                RXNE: u1 = 0x0,
                ///  Address matched (slave mode)
                ADDR: u1 = 0x0,
                ///  Not acknowledge received flag
                NACKF: u1 = 0x0,
                ///  Stop detection flag
                STOPF: u1 = 0x0,
                ///  Transfer Complete (master mode)
                TC: u1 = 0x0,
                ///  Transfer Complete Reload
                TCR: u1 = 0x0,
                ///  Bus error
                BERR: u1 = 0x0,
                ///  Arbitration lost
                ARLO: u1 = 0x0,
                ///  Overrun/Underrun (slave mode)
                OVR: u1 = 0x0,
                ///  PEC Error in reception
                PECERR: u1 = 0x0,
                ///  Timeout or t_low detection flag
                TIMEOUT: u1 = 0x0,
                ///  SMBus alert
                ALERT: u1 = 0x0,
                reserved15: u1 = 0x0,
                ///  Bus busy
                BUSY: u1 = 0x0,
                ///  Transfer direction (Slave mode)
                DIR: u1 = 0x0,
                ///  Address match code (Slave mode)
                ADDCODE: u7 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Interrupt clear register
            ICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved3: u3 = 0x0,
                ///  Address Matched flag clear
                ADDRCF: u1 = 0x0,
                ///  Not Acknowledge flag clear
                NACKCF: u1 = 0x0,
                ///  Stop detection flag clear
                STOPCF: u1 = 0x0,
                reserved8: u2 = 0x0,
                ///  Bus error flag clear
                BERRCF: u1 = 0x0,
                ///  Arbitration lost flag clear
                ARLOCF: u1 = 0x0,
                ///  Overrun/Underrun flag clear
                OVRCF: u1 = 0x0,
                ///  PEC Error flag clear
                PECCF: u1 = 0x0,
                ///  Timeout detection flag clear
                TIMOUTCF: u1 = 0x0,
                ///  Alert flag clear
                ALERTCF: u1 = 0x0,
                padding: u18 = 0x0,
            }),
            ///  PEC register
            PECR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Packet error checking register
                PEC: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Receive data register
            RXDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  8-bit receive data
                RXDATA: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Transmit data register
            TXDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  8-bit transmit data
                TXDATA: u8 = 0x0,
                padding: u24 = 0x0,
            }),
        };

        ///  CRS
        pub const CRS = extern struct {
            ///  CRS control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x4000
                ///  SYNC event OK interrupt enable
                SYNCOKIE: u1 = 0x0,
                ///  SYNC warning interrupt enable
                SYNCWARNIE: u1 = 0x0,
                ///  Synchronization or trimming error interrupt enable
                ERRIE: u1 = 0x0,
                ///  Expected SYNC interrupt enable
                ESYNCIE: u1 = 0x0,
                reserved5: u1 = 0x0,
                ///  Frequency error counter enable This bit enables the oscillator clock for the frequency error counter. When this bit is set, the CRS_CFGR register is write-protected and cannot be modified.
                CEN: u1 = 0x0,
                ///  Automatic trimming enable This bit enables the automatic hardware adjustment of TRIM bits according to the measured frequency error between two SYNC events. If this bit is set, the TRIM bits are read-only. The TRIM value can be adjusted by hardware by one or two steps at a time, depending on the measured frequency error value. Refer to Section7.3.4: Frequency error evaluation and automatic trimming for more details.
                AUTOTRIMEN: u1 = 0x0,
                ///  Generate software SYNC event This bit is set by software in order to generate a software SYNC event. It is automatically cleared by hardware.
                SWSYNC: u1 = 0x0,
                ///  HSI48 oscillator smooth trimming These bits provide a user-programmable trimming value to the HSI48 oscillator. They can be programmed to adjust to variations in voltage and temperature that influence the frequency of the HSI48. The default value is 32, which corresponds to the middle of the trimming interval. The trimming step is around 67 kHz between two consecutive TRIM steps. A higher TRIM value corresponds to a higher output frequency. When the AUTOTRIMEN bit is set, this field is controlled by hardware and is read-only.
                TRIM: u7 = 0x40,
                padding: u17 = 0x0,
            }),
            ///  This register can be written only when the frequency error counter is disabled (CEN bit is cleared in CRS_CR). When the counter is enabled, this register is write-protected.
            CFGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x2022BB7F
                ///  Counter reload value RELOAD is the value to be loaded in the frequency error counter with each SYNC event. Refer to Section7.3.3: Frequency error measurement for more details about counter behavior.
                RELOAD: u16 = 0xBB7F,
                ///  Frequency error limit FELIM contains the value to be used to evaluate the captured frequency error value latched in the FECAP[15:0] bits of the CRS_ISR register. Refer to Section7.3.4: Frequency error evaluation and automatic trimming for more details about FECAP evaluation.
                FELIM: u8 = 0x22,
                ///  SYNC divider These bits are set and cleared by software to control the division factor of the SYNC signal.
                SYNCDIV: u3 = 0x0,
                reserved28: u1 = 0x0,
                ///  SYNC signal source selection These bits are set and cleared by software to select the SYNC signal source. Note: When using USB LPM (Link Power Management) and the device is in Sleep mode, the periodic USB SOF will not be generated by the host. No SYNC signal will therefore be provided to the CRS to calibrate the HSI48 on the run. To guarantee the required clock precision after waking up from Sleep mode, the LSE or reference clock on the GPIOs should be used as SYNC signal.
                SYNCSRC: u2 = 0x2,
                reserved31: u1 = 0x0,
                ///  SYNC polarity selection This bit is set and cleared by software to select the input polarity for the SYNC signal source.
                SYNCPOL: u1 = 0x0,
            }),
            ///  CRS interrupt and status register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SYNC event OK flag This flag is set by hardware when the measured frequency error is smaller than FELIM * 3. This means that either no adjustment of the TRIM value is needed or that an adjustment by one trimming step is enough to compensate the frequency error. An interrupt is generated if the SYNCOKIE bit is set in the CRS_CR register. It is cleared by software by setting the SYNCOKC bit in the CRS_ICR register.
                SYNCOKF: u1 = 0x0,
                ///  SYNC warning flag This flag is set by hardware when the measured frequency error is greater than or equal to FELIM * 3, but smaller than FELIM * 128. This means that to compensate the frequency error, the TRIM value must be adjusted by two steps or more. An interrupt is generated if the SYNCWARNIE bit is set in the CRS_CR register. It is cleared by software by setting the SYNCWARNC bit in the CRS_ICR register.
                SYNCWARNF: u1 = 0x0,
                ///  Error flag This flag is set by hardware in case of any synchronization or trimming error. It is the logical OR of the TRIMOVF, SYNCMISS and SYNCERR bits. An interrupt is generated if the ERRIE bit is set in the CRS_CR register. It is cleared by software in reaction to setting the ERRC bit in the CRS_ICR register, which clears the TRIMOVF, SYNCMISS and SYNCERR bits.
                ERRF: u1 = 0x0,
                ///  Expected SYNC flag This flag is set by hardware when the frequency error counter reached a zero value. An interrupt is generated if the ESYNCIE bit is set in the CRS_CR register. It is cleared by software by setting the ESYNCC bit in the CRS_ICR register.
                ESYNCF: u1 = 0x0,
                reserved8: u4 = 0x0,
                ///  SYNC error This flag is set by hardware when the SYNC pulse arrives before the ESYNC event and the measured frequency error is greater than or equal to FELIM * 128. This means that the frequency error is too big (internal frequency too low) to be compensated by adjusting the TRIM value, and that some other action should be taken. An interrupt is generated if the ERRIE bit is set in the CRS_CR register. It is cleared by software by setting the ERRC bit in the CRS_ICR register.
                SYNCERR: u1 = 0x0,
                ///  SYNC missed This flag is set by hardware when the frequency error counter reached value FELIM * 128 and no SYNC was detected, meaning either that a SYNC pulse was missed or that the frequency error is too big (internal frequency too high) to be compensated by adjusting the TRIM value, and that some other action should be taken. At this point, the frequency error counter is stopped (waiting for a next SYNC) and an interrupt is generated if the ERRIE bit is set in the CRS_CR register. It is cleared by software by setting the ERRC bit in the CRS_ICR register.
                SYNCMISS: u1 = 0x0,
                ///  Trimming overflow or underflow This flag is set by hardware when the automatic trimming tries to over- or under-flow the TRIM value. An interrupt is generated if the ERRIE bit is set in the CRS_CR register. It is cleared by software by setting the ERRC bit in the CRS_ICR register.
                TRIMOVF: u1 = 0x0,
                reserved15: u4 = 0x0,
                ///  Frequency error direction FEDIR is the counting direction of the frequency error counter latched in the time of the last SYNC event. It shows whether the actual frequency is below or above the target.
                FEDIR: u1 = 0x0,
                ///  Frequency error capture FECAP is the frequency error counter value latched in the time ofthe last SYNC event. Refer to Section7.3.4: Frequency error evaluation and automatic trimming for more details about FECAP usage.
                FECAP: u16 = 0x0,
            }),
            ///  CRS interrupt flag clear register
            ICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SYNC event OK clear flag Writing 1 to this bit clears the SYNCOKF flag in the CRS_ISR register.
                SYNCOKC: u1 = 0x0,
                ///  SYNC warning clear flag Writing 1 to this bit clears the SYNCWARNF flag in the CRS_ISR register.
                SYNCWARNC: u1 = 0x0,
                ///  Error clear flag Writing 1 to this bit clears TRIMOVF, SYNCMISS and SYNCERR bits and consequently also the ERRF flag in the CRS_ISR register.
                ERRC: u1 = 0x0,
                ///  Expected SYNC clear flag Writing 1 to this bit clears the ESYNCF flag in the CRS_ISR register.
                ESYNCC: u1 = 0x0,
                padding: u28 = 0x0,
            }),
        };

        ///  USB_FS_device
        pub const USB_FS_device = extern struct {
            ///  USB endpoint n register
            EP0R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EA
                EA: u4 = 0x0,
                ///  STAT_TX
                STAT_TX: u2 = 0x0,
                ///  DTOG_TX
                DTOG_TX: u1 = 0x0,
                ///  CTR_TX
                CTR_TX: u1 = 0x0,
                ///  EP_KIND
                EP_KIND: u1 = 0x0,
                ///  EP_TYPE
                EP_TYPE: u2 = 0x0,
                ///  SETUP
                SETUP: u1 = 0x0,
                ///  STAT_RX
                STAT_RX: u2 = 0x0,
                ///  DTOG_RX
                DTOG_RX: u1 = 0x0,
                ///  CTR_RX
                CTR_RX: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB endpoint n register
            EP1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EA
                EA: u4 = 0x0,
                ///  STAT_TX
                STAT_TX: u2 = 0x0,
                ///  DTOG_TX
                DTOG_TX: u1 = 0x0,
                ///  CTR_TX
                CTR_TX: u1 = 0x0,
                ///  EP_KIND
                EP_KIND: u1 = 0x0,
                ///  EP_TYPE
                EP_TYPE: u2 = 0x0,
                ///  SETUP
                SETUP: u1 = 0x0,
                ///  STAT_RX
                STAT_RX: u2 = 0x0,
                ///  DTOG_RX
                DTOG_RX: u1 = 0x0,
                ///  CTR_RX
                CTR_RX: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB endpoint n register
            EP2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EA
                EA: u4 = 0x0,
                ///  STAT_TX
                STAT_TX: u2 = 0x0,
                ///  DTOG_TX
                DTOG_TX: u1 = 0x0,
                ///  CTR_TX
                CTR_TX: u1 = 0x0,
                ///  EP_KIND
                EP_KIND: u1 = 0x0,
                ///  EP_TYPE
                EP_TYPE: u2 = 0x0,
                ///  SETUP
                SETUP: u1 = 0x0,
                ///  STAT_RX
                STAT_RX: u2 = 0x0,
                ///  DTOG_RX
                DTOG_RX: u1 = 0x0,
                ///  CTR_RX
                CTR_RX: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB endpoint n register
            EP3R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EA
                EA: u4 = 0x0,
                ///  STAT_TX
                STAT_TX: u2 = 0x0,
                ///  DTOG_TX
                DTOG_TX: u1 = 0x0,
                ///  CTR_TX
                CTR_TX: u1 = 0x0,
                ///  EP_KIND
                EP_KIND: u1 = 0x0,
                ///  EP_TYPE
                EP_TYPE: u2 = 0x0,
                ///  SETUP
                SETUP: u1 = 0x0,
                ///  STAT_RX
                STAT_RX: u2 = 0x0,
                ///  DTOG_RX
                DTOG_RX: u1 = 0x0,
                ///  CTR_RX
                CTR_RX: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB endpoint n register
            EP4R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EA
                EA: u4 = 0x0,
                ///  STAT_TX
                STAT_TX: u2 = 0x0,
                ///  DTOG_TX
                DTOG_TX: u1 = 0x0,
                ///  CTR_TX
                CTR_TX: u1 = 0x0,
                ///  EP_KIND
                EP_KIND: u1 = 0x0,
                ///  EP_TYPE
                EP_TYPE: u2 = 0x0,
                ///  SETUP
                SETUP: u1 = 0x0,
                ///  STAT_RX
                STAT_RX: u2 = 0x0,
                ///  DTOG_RX
                DTOG_RX: u1 = 0x0,
                ///  CTR_RX
                CTR_RX: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB endpoint n register
            EP5R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EA
                EA: u4 = 0x0,
                ///  STAT_TX
                STAT_TX: u2 = 0x0,
                ///  DTOG_TX
                DTOG_TX: u1 = 0x0,
                ///  CTR_TX
                CTR_TX: u1 = 0x0,
                ///  EP_KIND
                EP_KIND: u1 = 0x0,
                ///  EP_TYPE
                EP_TYPE: u2 = 0x0,
                ///  SETUP
                SETUP: u1 = 0x0,
                ///  STAT_RX
                STAT_RX: u2 = 0x0,
                ///  DTOG_RX
                DTOG_RX: u1 = 0x0,
                ///  CTR_RX
                CTR_RX: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB endpoint n register
            EP6R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EA
                EA: u4 = 0x0,
                ///  STAT_TX
                STAT_TX: u2 = 0x0,
                ///  DTOG_TX
                DTOG_TX: u1 = 0x0,
                ///  CTR_TX
                CTR_TX: u1 = 0x0,
                ///  EP_KIND
                EP_KIND: u1 = 0x0,
                ///  EP_TYPE
                EP_TYPE: u2 = 0x0,
                ///  SETUP
                SETUP: u1 = 0x0,
                ///  STAT_RX
                STAT_RX: u2 = 0x0,
                ///  DTOG_RX
                DTOG_RX: u1 = 0x0,
                ///  CTR_RX
                CTR_RX: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB endpoint n register
            EP7R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EA
                EA: u4 = 0x0,
                ///  STAT_TX
                STAT_TX: u2 = 0x0,
                ///  DTOG_TX
                DTOG_TX: u1 = 0x0,
                ///  CTR_TX
                CTR_TX: u1 = 0x0,
                ///  EP_KIND
                EP_KIND: u1 = 0x0,
                ///  EP_TYPE
                EP_TYPE: u2 = 0x0,
                ///  SETUP
                SETUP: u1 = 0x0,
                ///  STAT_RX
                STAT_RX: u2 = 0x0,
                ///  DTOG_RX
                DTOG_RX: u1 = 0x0,
                ///  CTR_RX
                CTR_RX: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved64: [32]u8,
            ///  USB control register
            CNTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  FRES
                FRES: u1 = 0x0,
                ///  PDWN
                PDWN: u1 = 0x0,
                ///  LP_MODE
                LP_MODE: u1 = 0x0,
                ///  FSUSP
                FSUSP: u1 = 0x0,
                ///  RESUME
                RESUME: u1 = 0x0,
                ///  L1RESUME
                L1RESUME: u1 = 0x0,
                reserved7: u1 = 0x0,
                ///  L1REQM
                L1REQM: u1 = 0x0,
                ///  ESOFM
                ESOFM: u1 = 0x0,
                ///  SOFM
                SOFM: u1 = 0x0,
                ///  RESETM
                RESETM: u1 = 0x0,
                ///  SUSPM
                SUSPM: u1 = 0x0,
                ///  WKUPM
                WKUPM: u1 = 0x0,
                ///  ERRM
                ERRM: u1 = 0x0,
                ///  PMAOVRM
                PMAOVRM: u1 = 0x0,
                ///  CTRM
                CTRM: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB interrupt status register
            ISTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EP_ID
                EP_ID: u4 = 0x0,
                ///  DIR
                DIR: u1 = 0x0,
                reserved7: u2 = 0x0,
                ///  L1REQ
                L1REQ: u1 = 0x0,
                ///  ESOF
                ESOF: u1 = 0x0,
                ///  SOF
                SOF: u1 = 0x0,
                ///  RESET
                RESET: u1 = 0x0,
                ///  SUSP
                SUSP: u1 = 0x0,
                ///  WKUP
                WKUP: u1 = 0x0,
                ///  ERR
                ERR: u1 = 0x0,
                ///  PMAOVR
                PMAOVR: u1 = 0x0,
                ///  CTR
                CTR: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB frame number register
            FNR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  FN
                FN: u11 = 0x0,
                ///  LSOF
                LSOF: u2 = 0x0,
                ///  LCK
                LCK: u1 = 0x0,
                ///  RXDM
                RXDM: u1 = 0x0,
                ///  RXDP
                RXDP: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  USB device address
            DADDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADD
                ADD: u7 = 0x0,
                ///  EF
                EF: u1 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Buffer table address
            BTABLE: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved3: u3 = 0x0,
                ///  BTABLE
                BTABLE: u13 = 0x0,
                padding: u16 = 0x0,
            }),
        };

        ///  UCPD1
        pub const UCPD1 = extern struct {
            ///  UCPD configuration register 1
            CFG1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HBITCLKDIV
                HBITCLKDIV: u6 = 0x0,
                ///  IFRGAP
                IFRGAP: u5 = 0x0,
                ///  TRANSWIN
                TRANSWIN: u5 = 0x0,
                reserved17: u1 = 0x0,
                ///  PSC_USBPDCLK
                PSC_USBPDCLK: u3 = 0x0,
                ///  RXORDSETEN
                RXORDSETEN: u9 = 0x0,
                ///  TXDMAEN
                TXDMAEN: u1 = 0x0,
                ///  RXDMAEN
                RXDMAEN: u1 = 0x0,
                ///  UCPDEN
                UCPDEN: u1 = 0x0,
            }),
            ///  UCPD configuration register 2
            CFG2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RXFILTDIS
                RXFILTDIS: u1 = 0x0,
                ///  RXFILT2N3
                RXFILT2N3: u1 = 0x0,
                ///  FORCECLK
                FORCECLK: u1 = 0x0,
                ///  WUPEN
                WUPEN: u1 = 0x0,
                padding: u28 = 0x0,
            }),
            reserved12: [4]u8,
            ///  UCPD configuration register 2
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TXMODE
                TXMODE: u2 = 0x0,
                ///  TXSEND
                TXSEND: u1 = 0x0,
                ///  TXHRST
                TXHRST: u1 = 0x0,
                ///  RXMODE
                RXMODE: u1 = 0x0,
                ///  PHYRXEN
                PHYRXEN: u1 = 0x0,
                ///  PHYCCSEL
                PHYCCSEL: u1 = 0x0,
                ///  ANASUBMODE
                ANASUBMODE: u2 = 0x0,
                ///  ANAMODE
                ANAMODE: u1 = 0x0,
                ///  CCENABLE
                CCENABLE: u2 = 0x0,
                reserved16: u4 = 0x0,
                ///  FRSRXEN
                FRSRXEN: u1 = 0x0,
                ///  FRSTX
                FRSTX: u1 = 0x0,
                ///  RDCH
                RDCH: u1 = 0x0,
                reserved20: u1 = 0x0,
                ///  CC1TCDIS
                CC1TCDIS: u1 = 0x0,
                ///  CC2TCDIS
                CC2TCDIS: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  UCPD Interrupt Mask Register
            IMR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TXISIE
                TXISIE: u1 = 0x0,
                ///  TXMSGDISCIE
                TXMSGDISCIE: u1 = 0x0,
                ///  TXMSGSENTIE
                TXMSGSENTIE: u1 = 0x0,
                ///  TXMSGABTIE
                TXMSGABTIE: u1 = 0x0,
                ///  HRSTDISCIE
                HRSTDISCIE: u1 = 0x0,
                ///  HRSTSENTIE
                HRSTSENTIE: u1 = 0x0,
                ///  TXUNDIE
                TXUNDIE: u1 = 0x0,
                reserved8: u1 = 0x0,
                ///  RXNEIE
                RXNEIE: u1 = 0x0,
                ///  RXORDDETIE
                RXORDDETIE: u1 = 0x0,
                ///  RXHRSTDETIE
                RXHRSTDETIE: u1 = 0x0,
                ///  RXOVRIE
                RXOVRIE: u1 = 0x0,
                ///  RXMSGENDIE
                RXMSGENDIE: u1 = 0x0,
                reserved14: u1 = 0x0,
                ///  TYPECEVT1IE
                TYPECEVT1IE: u1 = 0x0,
                ///  TYPECEVT2IE
                TYPECEVT2IE: u1 = 0x0,
                reserved20: u4 = 0x0,
                ///  FRSEVTIE
                FRSEVTIE: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  UCPD Status Register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TXIS
                TXIS: u1 = 0x0,
                ///  TXMSGDISC
                TXMSGDISC: u1 = 0x0,
                ///  TXMSGSENT
                TXMSGSENT: u1 = 0x0,
                ///  TXMSGABT
                TXMSGABT: u1 = 0x0,
                ///  HRSTDISC
                HRSTDISC: u1 = 0x0,
                ///  HRSTSENT
                HRSTSENT: u1 = 0x0,
                ///  TXUND
                TXUND: u1 = 0x0,
                reserved8: u1 = 0x0,
                ///  RXNE
                RXNE: u1 = 0x0,
                ///  RXORDDET
                RXORDDET: u1 = 0x0,
                ///  RXHRSTDET
                RXHRSTDET: u1 = 0x0,
                ///  RXOVR
                RXOVR: u1 = 0x0,
                ///  RXMSGEND
                RXMSGEND: u1 = 0x0,
                ///  RXERR
                RXERR: u1 = 0x0,
                ///  TYPECEVT1
                TYPECEVT1: u1 = 0x0,
                ///  TYPECEVT2
                TYPECEVT2: u1 = 0x0,
                ///  TYPEC_VSTATE_CC1
                TYPEC_VSTATE_CC1: u2 = 0x0,
                ///  TYPEC_VSTATE_CC2
                TYPEC_VSTATE_CC2: u2 = 0x0,
                ///  FRSEVT
                FRSEVT: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  UCPD Interrupt Clear Register
            ICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  TXMSGDISCCF
                TXMSGDISCCF: u1 = 0x0,
                ///  TXMSGSENTCF
                TXMSGSENTCF: u1 = 0x0,
                ///  TXMSGABTCF
                TXMSGABTCF: u1 = 0x0,
                ///  HRSTDISCCF
                HRSTDISCCF: u1 = 0x0,
                ///  HRSTSENTCF
                HRSTSENTCF: u1 = 0x0,
                ///  TXUNDCF
                TXUNDCF: u1 = 0x0,
                reserved9: u2 = 0x0,
                ///  RXORDDETCF
                RXORDDETCF: u1 = 0x0,
                ///  RXHRSTDETCF
                RXHRSTDETCF: u1 = 0x0,
                ///  RXOVRCF
                RXOVRCF: u1 = 0x0,
                ///  RXMSGENDCF
                RXMSGENDCF: u1 = 0x0,
                reserved14: u1 = 0x0,
                ///  TYPECEVT1CF
                TYPECEVT1CF: u1 = 0x0,
                ///  TYPECEVT2CF
                TYPECEVT2CF: u1 = 0x0,
                reserved20: u4 = 0x0,
                ///  FRSEVTCF
                FRSEVTCF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  UCPD Tx Ordered Set Type Register
            TX_ORDSET: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TXORDSET
                TXORDSET: u20 = 0x0,
                padding: u12 = 0x0,
            }),
            ///  UCPD Tx Paysize Register
            TX_PAYSZ: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TXPAYSZ
                TXPAYSZ: u10 = 0x0,
                padding: u22 = 0x0,
            }),
            ///  UCPD Tx Data Register
            TXDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TXDATA
                TXDATA: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  UCPD Rx Ordered Set Register
            RX_ORDSET: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RXORDSET
                RXORDSET: u3 = 0x0,
                ///  RXSOP3OF4
                RXSOP3OF4: u1 = 0x0,
                ///  RXSOPKINVALID
                RXSOPKINVALID: u3 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  UCPD Rx Paysize Register
            RX_PAYSZ: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RXPAYSZ
                RXPAYSZ: u10 = 0x0,
                padding: u22 = 0x0,
            }),
            ///  UCPD Rx Data Register
            RXDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RXDATA
                RXDATA: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  UCPD Rx Ordered Set Extension Register 1
            RX_ORDEXT1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RXSOPX1
                RXSOPX1: u20 = 0x0,
                padding: u12 = 0x0,
            }),
            ///  UCPD Rx Ordered Set Extension Register 2
            RX_ORDEXT2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RXSOPX2
                RXSOPX2: u20 = 0x0,
                padding: u12 = 0x0,
            }),
        };

        ///  Flash
        pub const FLASH = extern struct {
            ///  Access control register
            ACR: mmio.Mmio(packed struct(u32) { // reset_value: 0x600
                ///  Latency
                LATENCY: u4 = 0x0,
                reserved8: u4 = 0x0,
                ///  Prefetch enable
                PRFTEN: u1 = 0x0,
                ///  Instruction cache enable
                ICEN: u1 = 0x1,
                ///  Data cache enable
                DCEN: u1 = 0x1,
                ///  Instruction cache reset
                ICRST: u1 = 0x0,
                ///  Data cache reset
                DCRST: u1 = 0x0,
                ///  Flash Power-down mode during Low-power run mode
                RUN_PD: u1 = 0x0,
                ///  Flash Power-down mode during Low-power sleep mode
                SLEEP_PD: u1 = 0x0,
                reserved18: u3 = 0x0,
                ///  Debug software enable
                DBG_SWEN: u1 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  Power down key register
            PDKEYR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RUN_PD in FLASH_ACR key
                PDKEYR: u32 = 0x0,
            }),
            ///  Flash key register
            KEYR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  KEYR
                KEYR: u32 = 0x0,
            }),
            ///  Option byte key register
            OPTKEYR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Option byte key
                OPTKEYR: u32 = 0x0,
            }),
            ///  Status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  End of operation
                EOP: u1 = 0x0,
                ///  Operation error
                OPERR: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  Programming error
                PROGERR: u1 = 0x0,
                ///  Write protected error
                WRPERR: u1 = 0x0,
                ///  Programming alignment error
                PGAERR: u1 = 0x0,
                ///  Size error
                SIZERR: u1 = 0x0,
                ///  Programming sequence error
                PGSERR: u1 = 0x0,
                ///  Fast programming data miss error
                MISERR: u1 = 0x0,
                ///  Fast programming error
                FASTERR: u1 = 0x0,
                reserved14: u4 = 0x0,
                ///  PCROP read error
                RDERR: u1 = 0x0,
                ///  Option validity error
                OPTVERR: u1 = 0x0,
                ///  Busy
                BSY: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Flash control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0xC0000000
                ///  Programming
                PG: u1 = 0x0,
                ///  Page erase
                PER: u1 = 0x0,
                ///  Bank 1 Mass erase
                MER1: u1 = 0x0,
                ///  Page number
                PNB: u7 = 0x0,
                reserved16: u6 = 0x0,
                ///  Start
                STRT: u1 = 0x0,
                ///  Options modification start
                OPTSTRT: u1 = 0x0,
                ///  Fast programming
                FSTPG: u1 = 0x0,
                reserved24: u5 = 0x0,
                ///  End of operation interrupt enable
                EOPIE: u1 = 0x0,
                ///  Error interrupt enable
                ERRIE: u1 = 0x0,
                ///  PCROP read error interrupt enable
                RDERRIE: u1 = 0x0,
                ///  Force the option byte loading
                OBL_LAUNCH: u1 = 0x0,
                ///  SEC_PROT1
                SEC_PROT1: u1 = 0x0,
                reserved30: u1 = 0x0,
                ///  Options Lock
                OPTLOCK: u1 = 0x1,
                ///  FLASH_CR Lock
                LOCK: u1 = 0x1,
            }),
            ///  Flash ECC register
            ECCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ECC fail address
                ADDR_ECC: u19 = 0x0,
                reserved21: u2 = 0x0,
                ///  BK_ECC
                BK_ECC: u1 = 0x0,
                ///  SYSF_ECC
                SYSF_ECC: u1 = 0x0,
                reserved24: u1 = 0x0,
                ///  ECCIE
                ECCIE: u1 = 0x0,
                reserved28: u3 = 0x0,
                ///  ECC correction
                ECCC2: u1 = 0x0,
                ///  ECC2 detection
                ECCD2: u1 = 0x0,
                ///  ECC correction
                ECCC: u1 = 0x0,
                ///  ECC detection
                ECCD: u1 = 0x0,
            }),
            reserved32: [4]u8,
            ///  Flash option register
            OPTR: mmio.Mmio(packed struct(u32) { // reset_value: 0xF0000000
                ///  Read protection level
                RDP: u8 = 0x0,
                ///  BOR reset Level
                BOR_LEV: u3 = 0x0,
                reserved12: u1 = 0x0,
                ///  nRST_STOP
                nRST_STOP: u1 = 0x0,
                ///  nRST_STDBY
                nRST_STDBY: u1 = 0x0,
                ///  nRST_SHDW
                nRST_SHDW: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  Independent watchdog selection
                IDWG_SW: u1 = 0x0,
                ///  Independent watchdog counter freeze in Stop mode
                IWDG_STOP: u1 = 0x0,
                ///  Independent watchdog counter freeze in Standby mode
                IWDG_STDBY: u1 = 0x0,
                ///  Window watchdog selection
                WWDG_SW: u1 = 0x0,
                reserved23: u3 = 0x0,
                ///  Boot configuration
                nBOOT1: u1 = 0x0,
                ///  SRAM2 parity check enable
                SRAM2_PE: u1 = 0x0,
                ///  SRAM2 Erase when system reset
                SRAM2_RST: u1 = 0x0,
                ///  nSWBOOT0
                nSWBOOT0: u1 = 0x0,
                ///  nBOOT0
                nBOOT0: u1 = 0x0,
                ///  NRST_MODE
                NRST_MODE: u2 = 0x3,
                ///  IRHEN
                IRHEN: u1 = 0x1,
                padding: u1 = 0x1,
            }),
            ///  Flash Bank 1 PCROP Start address register
            PCROP1SR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF0000
                ///  Bank 1 PCROP area start offset
                PCROP1_STRT: u15 = 0x0,
                padding: u17 = 0x1FFFE,
            }),
            ///  Flash Bank 1 PCROP End address register
            PCROP1ER: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFF0000
                ///  Bank 1 PCROP area end offset
                PCROP1_END: u15 = 0x0,
                reserved31: u16 = 0x1FFE,
                ///  PCROP area preserved when RDP level decreased
                PCROP_RDP: u1 = 0x0,
            }),
            ///  Flash Bank 1 WRP area A address register
            WRP1AR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Bank 1 WRP first area start offset
                WRP1A_STRT: u7 = 0x0,
                reserved16: u9 = 0x0,
                ///  Bank 1 WRP first area A end offset
                WRP1A_END: u7 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  Flash Bank 1 WRP area B address register
            WRP1BR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Bank 1 WRP second area B end offset
                WRP1B_STRT: u7 = 0x0,
                reserved16: u9 = 0x0,
                ///  Bank 1 WRP second area B start offset
                WRP1B_END: u7 = 0x0,
                padding: u9 = 0x0,
            }),
            reserved112: [60]u8,
            ///  securable area bank1 register
            SEC1R: mmio.Mmio(packed struct(u32) { // reset_value: 0xFF00FF00
                ///  SEC_SIZE1
                SEC_SIZE1: u8 = 0x0,
                reserved16: u8 = 0xFF,
                ///  BOOT_LOCK
                BOOT_LOCK: u1 = 0x0,
                padding: u15 = 0x7F80,
            }),
        };

        ///  Debug support
        pub const DBGMCU = extern struct {
            ///  MCU Device ID Code Register
            IDCODE: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Device Identifier
                DEV_ID: u16 = 0x0,
                ///  Revision Identifier
                REV_ID: u16 = 0x0,
            }),
            ///  Debug MCU Configuration Register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Debug Sleep Mode
                DBG_SLEEP: u1 = 0x0,
                ///  Debug Stop Mode
                DBG_STOP: u1 = 0x0,
                ///  Debug Standby Mode
                DBG_STANDBY: u1 = 0x0,
                reserved5: u2 = 0x0,
                ///  Trace pin assignment control
                TRACE_IOEN: u1 = 0x0,
                ///  Trace pin assignment control
                TRACE_MODE: u2 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  APB Low Freeze Register 1
            APB1L_FZ: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Debug Timer 2 stopped when Core is halted
                DBG_TIMER2_STOP: u1 = 0x0,
                ///  TIM3 counter stopped when core is halted
                DBG_TIM3_STOP: u1 = 0x0,
                ///  TIM4 counter stopped when core is halted
                DBG_TIM4_STOP: u1 = 0x0,
                ///  TIM5 counter stopped when core is halted
                DBG_TIM5_STOP: u1 = 0x0,
                ///  Debug Timer 6 stopped when Core is halted
                DBG_TIMER6_STOP: u1 = 0x0,
                ///  TIM7 counter stopped when core is halted
                DBG_TIM7_STOP: u1 = 0x0,
                reserved10: u4 = 0x0,
                ///  Debug RTC stopped when Core is halted
                DBG_RTC_STOP: u1 = 0x0,
                ///  Debug Window Wachdog stopped when Core is halted
                DBG_WWDG_STOP: u1 = 0x0,
                ///  Debug Independent Wachdog stopped when Core is halted
                DBG_IWDG_STOP: u1 = 0x0,
                reserved21: u8 = 0x0,
                ///  I2C1 SMBUS timeout mode stopped when core is halted
                DBG_I2C1_STOP: u1 = 0x0,
                ///  I2C2 SMBUS timeout mode stopped when core is halted
                DBG_I2C2_STOP: u1 = 0x0,
                reserved30: u7 = 0x0,
                ///  I2C3 SMBUS timeout mode stopped when core is halted
                DBG_I2C3_STOP: u1 = 0x0,
                ///  LPTIM1 counter stopped when core is halted
                DBG_LPTIMER_STOP: u1 = 0x0,
            }),
            ///  APB Low Freeze Register 2
            APB1H_FZ: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  DBG_I2C4_STOP
                DBG_I2C4_STOP: u1 = 0x0,
                padding: u30 = 0x0,
            }),
            ///  APB High Freeze Register
            APB2_FZ: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved11: u11 = 0x0,
                ///  TIM1 counter stopped when core is halted
                DBG_TIM1_STOP: u1 = 0x0,
                reserved13: u1 = 0x0,
                ///  TIM8 counter stopped when core is halted
                DBG_TIM8_STOP: u1 = 0x0,
                reserved16: u2 = 0x0,
                ///  TIM15 counter stopped when core is halted
                DBG_TIM15_STOP: u1 = 0x0,
                ///  TIM16 counter stopped when core is halted
                DBG_TIM16_STOP: u1 = 0x0,
                ///  TIM17 counter stopped when core is halted
                DBG_TIM17_STOP: u1 = 0x0,
                reserved20: u1 = 0x0,
                ///  TIM20counter stopped when core is halted
                DBG_TIM20_STOP: u1 = 0x0,
                reserved26: u5 = 0x0,
                ///  DBG_HRTIM0_STOP
                DBG_HRTIM0_STOP: u1 = 0x0,
                ///  DBG_HRTIM0_STOP
                DBG_HRTIM1_STOP: u1 = 0x0,
                ///  DBG_HRTIM0_STOP
                DBG_HRTIM2_STOP: u1 = 0x0,
                ///  DBG_HRTIM0_STOP
                DBG_HRTIM3_STOP: u1 = 0x0,
                padding: u2 = 0x0,
            }),
        };

        ///  Reset and clock control
        pub const RCC = extern struct {
            ///  Clock control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x63
                reserved8: u8 = 0x63,
                ///  HSI clock enable
                HSION: u1 = 0x0,
                ///  HSI always enable for peripheral kernels
                HSIKERON: u1 = 0x0,
                ///  HSI clock ready flag
                HSIRDY: u1 = 0x0,
                reserved16: u5 = 0x0,
                ///  HSE clock enable
                HSEON: u1 = 0x0,
                ///  HSE clock ready flag
                HSERDY: u1 = 0x0,
                ///  HSE crystal oscillator bypass
                HSEBYP: u1 = 0x0,
                ///  Clock security system enable
                HSECSSON: u1 = 0x0,
                reserved24: u4 = 0x0,
                ///  Main PLL enable
                PLLSYSON: u1 = 0x0,
                ///  Main PLL clock ready flag
                PLLSYSRDY: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  Internal clock sources calibration register
            ICSCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x40000000
                reserved16: u16 = 0x0,
                ///  Internal High Speed clock Calibration
                HSICAL0: u8 = 0x0,
                ///  Internal High Speed clock trimming
                HSITRIM: u7 = 0x40,
                padding: u1 = 0x0,
            }),
            ///  Clock configuration register
            CFGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x5
                ///  System clock switch
                SW: u2 = 0x1,
                ///  System clock switch status
                SWS: u2 = 0x1,
                ///  AHB prescaler
                HPRE: u4 = 0x0,
                ///  PB low-speed prescaler (APB1)
                PPRE1: u3 = 0x0,
                ///  APB high-speed prescaler (APB2)
                PPRE2: u3 = 0x0,
                reserved24: u10 = 0x0,
                ///  Microcontroller clock output
                MCOSEL: u4 = 0x0,
                ///  Microcontroller clock output prescaler
                MCOPRE: u3 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  PLL configuration register
            PLLSYSCFGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x1000
                ///  Main PLL, PLLSAI1 and PLLSAI2 entry clock source
                PLLSRC: u2 = 0x0,
                reserved4: u2 = 0x0,
                ///  Division factor for the main PLL and audio PLL (PLLSAI1 and PLLSAI2) input clock
                PLLSYSM: u4 = 0x0,
                ///  Main PLL multiplication factor for VCO
                PLLSYSN: u7 = 0x10,
                reserved16: u1 = 0x0,
                ///  Main PLL PLLSAI3CLK output enable
                PLLPEN: u1 = 0x0,
                ///  Main PLL division factor for PLLSAI3CLK (SAI1 and SAI2 clock)
                PLLSYSP: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Main PLL PLLUSB1CLK output enable
                PLLSYSQEN: u1 = 0x0,
                ///  Main PLL division factor for PLLUSB1CLK(48 MHz clock)
                PLLSYSQ: u2 = 0x0,
                reserved24: u1 = 0x0,
                ///  Main PLL PLLCLK output enable
                PLLSYSREN: u1 = 0x0,
                ///  Main PLL division factor for PLLCLK (system clock)
                PLLSYSR: u2 = 0x0,
                ///  Main PLL division factor for PLLSAI2CLK
                PLLSYSPDIV: u5 = 0x0,
            }),
            reserved24: [8]u8,
            ///  Clock interrupt enable register
            CIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  LSI ready interrupt enable
                LSIRDYIE: u1 = 0x0,
                ///  LSE ready interrupt enable
                LSERDYIE: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  HSI ready interrupt enable
                HSIRDYIE: u1 = 0x0,
                ///  HSE ready interrupt enable
                HSERDYIE: u1 = 0x0,
                ///  PLL ready interrupt enable
                PLLSYSRDYIE: u1 = 0x0,
                reserved9: u3 = 0x0,
                ///  LSE clock security system interrupt enable
                LSECSSIE: u1 = 0x0,
                ///  HSI48 ready interrupt enable
                RC48RDYIE: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  Clock interrupt flag register
            CIFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  LSI ready interrupt flag
                LSIRDYF: u1 = 0x0,
                ///  LSE ready interrupt flag
                LSERDYF: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  HSI ready interrupt flag
                HSIRDYF: u1 = 0x0,
                ///  HSE ready interrupt flag
                HSERDYF: u1 = 0x0,
                ///  PLL ready interrupt flag
                PLLSYSRDYF: u1 = 0x0,
                reserved8: u2 = 0x0,
                ///  Clock security system interrupt flag
                HSECSSF: u1 = 0x0,
                ///  LSE Clock security system interrupt flag
                LSECSSF: u1 = 0x0,
                ///  HSI48 ready interrupt flag
                RC48RDYF: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  Clock interrupt clear register
            CICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  LSI ready interrupt clear
                LSIRDYC: u1 = 0x0,
                ///  LSE ready interrupt clear
                LSERDYC: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  HSI ready interrupt clear
                HSIRDYC: u1 = 0x0,
                ///  HSE ready interrupt clear
                HSERDYC: u1 = 0x0,
                ///  PLL ready interrupt clear
                PLLSYSRDYC: u1 = 0x0,
                reserved8: u2 = 0x0,
                ///  Clock security system interrupt clear
                HSECSSC: u1 = 0x0,
                ///  LSE Clock security system interrupt clear
                LSECSSC: u1 = 0x0,
                ///  HSI48 oscillator ready interrupt clear
                RC48RDYC: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            reserved40: [4]u8,
            ///  AHB1 peripheral reset register
            AHB1RSTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA1 reset
                DMA1RST: u1 = 0x0,
                ///  DMA2 reset
                DMA2RST: u1 = 0x0,
                ///  DMAMUXRST
                DMAMUX1RST: u1 = 0x0,
                ///  CORDIC reset
                CORDICRST: u1 = 0x0,
                ///  MATRIX reset
                MATRIXRST: u1 = 0x0,
                reserved8: u3 = 0x0,
                ///  FLITF reset
                FLITFRST_: u1 = 0x0,
                reserved12: u3 = 0x0,
                ///  CRC reset
                CRCRST: u1 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  AHB2 peripheral reset register
            AHB2RSTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IO port A reset
                GPIOARST: u1 = 0x0,
                ///  IO port B reset
                GPIOBRST: u1 = 0x0,
                ///  IO port C reset
                GPIOCRST: u1 = 0x0,
                ///  IO port D reset
                GPIODRST: u1 = 0x0,
                ///  IO port E reset
                GPIOERST: u1 = 0x0,
                ///  IO port F reset
                GPIOFRST: u1 = 0x0,
                ///  IO port G reset
                GPIOGRST: u1 = 0x0,
                reserved13: u6 = 0x0,
                ///  ADC reset
                ADC12RST: u1 = 0x0,
                ///  SAR ADC345 interface reset
                ADC345RST_: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  DAC1 interface reset
                DAC1RST_: u1 = 0x0,
                ///  DAC2 interface reset
                DAC2RST: u1 = 0x0,
                ///  DAC3 interface reset
                DAC3RST: u1 = 0x0,
                ///  DAC4 interface reset
                DAC4RST: u1 = 0x0,
                reserved24: u4 = 0x0,
                ///  Cryptography module reset
                CRYPTRST: u1 = 0x0,
                reserved26: u1 = 0x0,
                ///  Random Number Generator module reset
                RNGRST: u1 = 0x0,
                padding: u5 = 0x0,
            }),
            ///  AHB3 peripheral reset register
            AHB3RSTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Flexible memory controller reset
                FMCRST: u1 = 0x0,
                reserved8: u7 = 0x0,
                ///  Quad SPI 1 module reset
                QUADSPI1RST: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            reserved56: [4]u8,
            ///  APB1 peripheral reset register 1
            APB1RSTR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TIM2 timer reset
                TIM2RST: u1 = 0x0,
                ///  TIM3 timer reset
                TIM3RST: u1 = 0x0,
                ///  TIM3 timer reset
                TIM4RST: u1 = 0x0,
                ///  TIM5 timer reset
                TIM5RST: u1 = 0x0,
                ///  TIM6 timer reset
                TIM6RST: u1 = 0x0,
                ///  TIM7 timer reset
                TIM7RST: u1 = 0x0,
                reserved8: u2 = 0x0,
                ///  Clock recovery system reset
                CRSRST: u1 = 0x0,
                reserved14: u5 = 0x0,
                ///  SPI2 reset
                SPI2RST: u1 = 0x0,
                ///  SPI3 reset
                SPI3RST: u1 = 0x0,
                reserved17: u1 = 0x0,
                ///  USART2 reset
                USART2RST: u1 = 0x0,
                ///  USART3 reset
                USART3RST: u1 = 0x0,
                ///  UART4 reset
                UART4RST: u1 = 0x0,
                ///  UART5 reset
                UART5RST: u1 = 0x0,
                ///  I2C1 reset
                I2C1RST: u1 = 0x0,
                ///  I2C2 reset
                I2C2RST: u1 = 0x0,
                ///  USBD reset
                USBDRST: u1 = 0x0,
                reserved25: u1 = 0x0,
                ///  FDCAN reset
                FDCANRST: u1 = 0x0,
                reserved28: u2 = 0x0,
                ///  Power interface reset
                PWRRST: u1 = 0x0,
                reserved30: u1 = 0x0,
                ///  I2C3 interface reset
                I2C3: u1 = 0x0,
                ///  Low Power Timer 1 reset
                LPTIM1RST: u1 = 0x0,
            }),
            ///  APB1 peripheral reset register 2
            APB1RSTR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Low-power UART 1 reset
                LPUART1RST: u1 = 0x0,
                ///  I2C4 reset
                I2C4RST: u1 = 0x0,
                reserved8: u6 = 0x0,
                ///  USBPD reset
                USBPDRST: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  APB2 peripheral reset register
            APB2RSTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  System configuration (SYSCFG) reset
                SYSCFGRST: u1 = 0x0,
                reserved11: u10 = 0x0,
                ///  TIM1 timer reset
                TIM1RST: u1 = 0x0,
                ///  SPI1 reset
                SPI1RST: u1 = 0x0,
                ///  TIM8 timer reset
                TIM8RST: u1 = 0x0,
                ///  USART1 reset
                USART1RST: u1 = 0x0,
                ///  SPI 4 reset
                SPI4RST: u1 = 0x0,
                ///  TIM15 timer reset
                TIM15RST: u1 = 0x0,
                ///  TIM16 timer reset
                TIM16RST: u1 = 0x0,
                ///  TIM17 timer reset
                TIM17RST: u1 = 0x0,
                reserved20: u1 = 0x0,
                ///  Timer 20 reset
                TIM20RST: u1 = 0x0,
                ///  Serial audio interface 1 (SAI1) reset
                SAI1RST: u1 = 0x0,
                reserved26: u4 = 0x0,
                ///  HRTIMER reset
                HRTIM1RST: u1 = 0x0,
                padding: u5 = 0x0,
            }),
            reserved72: [4]u8,
            ///  AHB1 peripheral clock enable register
            AHB1ENR: mmio.Mmio(packed struct(u32) { // reset_value: 0x100
                ///  DMA1 clock enable
                DMA1EN: u1 = 0x0,
                ///  DMA2 clock enable
                DMA2EN: u1 = 0x0,
                ///  DMAMUX clock enable
                DMAMUXEN: u1 = 0x0,
                ///  CORDIC clock enable
                CORDICEN: u1 = 0x0,
                ///  FMAC clock enable
                FMACEN: u1 = 0x0,
                reserved8: u3 = 0x0,
                ///  FLITF clock enable
                FLITFEN: u1 = 0x1,
                reserved12: u3 = 0x0,
                ///  CRC clock enable
                CRCEN: u1 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  AHB2 peripheral clock enable register
            AHB2ENR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IO port A clock enable
                GPIOAEN: u1 = 0x0,
                ///  IO port B clock enable
                GPIOBEN: u1 = 0x0,
                ///  IO port C clock enable
                GPIOCEN: u1 = 0x0,
                ///  IO port D clock enable
                GPIODEN: u1 = 0x0,
                ///  IO port E clock enable
                GPIOEEN: u1 = 0x0,
                ///  IO port F clock enable
                GPIOFEN: u1 = 0x0,
                ///  IO port G clock enable
                GPIOGEN: u1 = 0x0,
                reserved13: u6 = 0x0,
                ///  ADC clock enable
                ADC12EN: u1 = 0x0,
                ///  DCMI clock enable
                ADC345EN: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  AES accelerator clock enable
                DAC1: u1 = 0x0,
                ///  HASH clock enable
                DAC2: u1 = 0x0,
                ///  Random Number Generator clock enable
                DAC3: u1 = 0x0,
                ///  DAC4 clock enable
                DAC4: u1 = 0x0,
                reserved24: u4 = 0x0,
                ///  Cryptography clock enable
                CRYPTEN: u1 = 0x0,
                reserved26: u1 = 0x0,
                ///  Random Number Generator clock enable
                RNGEN: u1 = 0x0,
                padding: u5 = 0x0,
            }),
            ///  AHB3 peripheral clock enable register
            AHB3ENR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Flexible memory controller clock enable
                FMCEN: u1 = 0x0,
                reserved8: u7 = 0x0,
                ///  Quad SPI 1 module clock enable
                QUADSPI1EN: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            reserved88: [4]u8,
            ///  APB1ENR1
            APB1ENR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TIM2 timer clock enable
                TIM2EN: u1 = 0x0,
                ///  TIM3 timer clock enable
                TIM3EN: u1 = 0x0,
                ///  TIM4 timer clock enable
                TIM4EN: u1 = 0x0,
                ///  TIM5 timer clock enable
                TIM5EN: u1 = 0x0,
                ///  TIM6 timer clock enable
                TIM6EN: u1 = 0x0,
                ///  TIM7 timer clock enable
                TIM7EN: u1 = 0x0,
                reserved8: u2 = 0x0,
                ///  CRSclock enable
                CRSEN: u1 = 0x0,
                reserved10: u1 = 0x0,
                ///  RTC APB clock enable
                RTCAPBEN: u1 = 0x0,
                ///  Window watchdog clock enable
                WWDGEN: u1 = 0x0,
                reserved14: u2 = 0x0,
                ///  SPI2 clock enable
                SPI2EN: u1 = 0x0,
                ///  SPI3 clock enable
                SP3EN: u1 = 0x0,
                reserved17: u1 = 0x0,
                ///  USART2 clock enable
                USART2EN: u1 = 0x0,
                ///  USART3 clock enable
                USART3EN: u1 = 0x0,
                ///  UART4 clock enable
                UART4EN: u1 = 0x0,
                ///  UART5 clock enable
                UART5EN: u1 = 0x0,
                ///  I2C1 clock enable
                I2C1EN: u1 = 0x0,
                ///  I2C2 clock enable
                I2C2EN: u1 = 0x0,
                ///  USBDclock enable
                USBDEN: u1 = 0x0,
                reserved25: u1 = 0x0,
                ///  FDCAN clock enable
                FDCANEN: u1 = 0x0,
                reserved28: u2 = 0x0,
                ///  Power interface clock enable
                PWREN: u1 = 0x0,
                reserved30: u1 = 0x0,
                ///  OPAMP interface clock enable
                I2C3: u1 = 0x0,
                ///  Low power timer 1 clock enable
                LPTIM1EN: u1 = 0x0,
            }),
            ///  APB1 peripheral clock enable register 2
            APB1ENR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Low power UART 1 clock enable
                LPUART1EN: u1 = 0x0,
                ///  I2C4 clock enable
                I2C4EN: u1 = 0x0,
                reserved8: u6 = 0x0,
                ///  USBPD clock enable
                USBPDEN: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  APB2ENR
            APB2ENR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SYSCFG clock enable
                SYSCFGEN: u1 = 0x0,
                reserved11: u10 = 0x0,
                ///  TIM1 timer clock enable
                TIM1EN: u1 = 0x0,
                ///  SPI1 clock enable
                SPI1EN: u1 = 0x0,
                ///  TIM8 timer clock enable
                TIM8EN: u1 = 0x0,
                ///  USART1clock enable
                USART1EN: u1 = 0x0,
                ///  SPI 4 clock enable
                SPI4EN: u1 = 0x0,
                ///  TIM15 timer clock enable
                TIM15EN: u1 = 0x0,
                ///  TIM16 timer clock enable
                TIM16EN: u1 = 0x0,
                ///  TIM17 timer clock enable
                TIM17EN: u1 = 0x0,
                reserved20: u1 = 0x0,
                ///  Timer 20 clock enable
                TIM20EN: u1 = 0x0,
                ///  SAI1 clock enable
                SAI1EN: u1 = 0x0,
                reserved26: u4 = 0x0,
                ///  HRTIMER clock enable
                HRTIMEREN: u1 = 0x0,
                padding: u5 = 0x0,
            }),
            reserved104: [4]u8,
            ///  AHB1 peripheral clocks enable in Sleep and Stop modes register
            AHB1SMENR: mmio.Mmio(packed struct(u32) { // reset_value: 0x130F
                ///  DMA1 clocks enable during Sleep and Stop modes
                DMA1SMEN: u1 = 0x1,
                ///  DMA2 clocks enable during Sleep and Stop modes
                DMA2SMEN: u1 = 0x1,
                ///  DMAMUX clock enable during Sleep and Stop modes
                DMAMUX1SMEN: u1 = 0x1,
                ///  CORDIC clock enable during sleep mode
                CORDICSMEN: u1 = 0x1,
                ///  FMACSM clock enable
                FMACSMEN: u1 = 0x0,
                reserved8: u3 = 0x0,
                ///  Flash memory interface clocks enable during Sleep and Stop modes
                FLASHSMEN: u1 = 0x1,
                ///  SRAM1 interface clocks enable during Sleep and Stop modes
                SRAM1SMEN: u1 = 0x1,
                reserved12: u2 = 0x0,
                ///  CRCSMEN
                CRCSMEN: u1 = 0x1,
                padding: u19 = 0x0,
            }),
            ///  AHB2 peripheral clocks enable in Sleep and Stop modes register
            AHB2SMENR: mmio.Mmio(packed struct(u32) { // reset_value: 0x50F667F
                ///  IO port A clocks enable during Sleep and Stop modes
                GPIOASMEN: u1 = 0x1,
                ///  IO port B clocks enable during Sleep and Stop modes
                GPIOBSMEN: u1 = 0x1,
                ///  IO port C clocks enable during Sleep and Stop modes
                GPIOCSMEN: u1 = 0x1,
                ///  IO port D clocks enable during Sleep and Stop modes
                GPIODSMEN: u1 = 0x1,
                ///  IO port E clocks enable during Sleep and Stop modes
                GPIOESMEN: u1 = 0x1,
                ///  IO port F clocks enable during Sleep and Stop modes
                GPIOFSMEN: u1 = 0x1,
                ///  IO port G clocks enable during Sleep and Stop modes
                GPIOGSMEN: u1 = 0x1,
                reserved9: u2 = 0x0,
                ///  SRAM2 interface clocks enable during Sleep and Stop modes
                SRAM2SMEN: u1 = 0x1,
                ///  SRAM2 interface clocks enable during Sleep and Stop modes
                SRAM3SMEN: u1 = 0x1,
                reserved13: u2 = 0x0,
                ///  ADC clocks enable during Sleep and Stop modes
                AD12CSMEN: u1 = 0x1,
                ///  DCMI clock enable during Sleep and Stop modes
                ADC345SMEN: u1 = 0x1,
                reserved16: u1 = 0x0,
                ///  AES accelerator clocks enable during Sleep and Stop modes
                DAC1SMEN: u1 = 0x1,
                ///  HASH clock enable during Sleep and Stop modes
                DAC2SMEN: u1 = 0x1,
                ///  DAC3 clock enable during sleep mode
                DAC3SMEN: u1 = 0x1,
                ///  DAC4 clock enable during sleep mode
                DAC4SMEN: u1 = 0x1,
                reserved24: u4 = 0x0,
                ///  Cryptography clock enable during sleep mode
                CRYPTSMEN: u1 = 0x1,
                reserved26: u1 = 0x0,
                ///  Random Number Generator clock enable during sleep mode
                RNGSMEN: u1 = 0x1,
                padding: u5 = 0x0,
            }),
            ///  AHB3 peripheral clocks enable in Sleep and Stop modes register
            AHB3SMENR: mmio.Mmio(packed struct(u32) { // reset_value: 0x101
                ///  Flexible memory controller clocks enable during Sleep and Stop modes
                FMCSMEN: u1 = 0x1,
                reserved8: u7 = 0x0,
                ///  QUAD SPI 1 module clock enable during sleep mode
                QUADSPI1SMEN: u1 = 0x1,
                padding: u23 = 0x0,
            }),
            reserved120: [4]u8,
            ///  APB1SMENR1
            APB1SMENR1: mmio.Mmio(packed struct(u32) { // reset_value: 0xD2FECD3F
                ///  TIM2 timer clocks enable during Sleep and Stop modes
                TIM2SMEN: u1 = 0x1,
                ///  TIM3 timer clocks enable during Sleep and Stop modes
                TIM3SMEN: u1 = 0x1,
                ///  TIM4 timer clocks enable during Sleep and Stop modes
                TIM4SMEN: u1 = 0x1,
                ///  TIM5 timer clocks enable during Sleep and Stop modes
                TIM5SMEN: u1 = 0x1,
                ///  TIM6 timer clocks enable during Sleep and Stop modes
                TIM6SMEN: u1 = 0x1,
                ///  TIM7 timer clocks enable during Sleep and Stop modes
                TIM7SMEN: u1 = 0x1,
                reserved8: u2 = 0x0,
                ///  CRS clock enable during sleep mode
                CRSSMEN: u1 = 0x1,
                reserved10: u1 = 0x0,
                ///  RTC APB clock enable during Sleep and Stop modes
                RTCAPBSMEN: u1 = 0x1,
                ///  Window watchdog clocks enable during Sleep and Stop modes
                WWDGSMEN: u1 = 0x1,
                reserved14: u2 = 0x0,
                ///  SPI2 clocks enable during Sleep and Stop modes
                SPI2SMEN: u1 = 0x1,
                ///  SPI3 clocks enable during Sleep and Stop modes
                SP3SMEN: u1 = 0x1,
                reserved17: u1 = 0x0,
                ///  USART2 clocks enable during Sleep and Stop modes
                USART2SMEN: u1 = 0x1,
                ///  USART3 clocks enable during Sleep and Stop modes
                USART3SMEN: u1 = 0x1,
                ///  UART4 clocks enable during Sleep and Stop modes
                UART4SMEN: u1 = 0x1,
                ///  UART5 clocks enable during Sleep and Stop modes
                UART5SMEN: u1 = 0x1,
                ///  I2C1 clocks enable during Sleep and Stop modes
                I2C1SMEN: u1 = 0x1,
                ///  I2C2 clocks enable during Sleep and Stop modes
                I2C2SMEN: u1 = 0x1,
                ///  I2C3 clocks enable during Sleep and Stop modes
                I2C3SMEN: u1 = 0x1,
                reserved25: u1 = 0x0,
                ///  FDCAN clock enable during sleep mode
                FDCANSMEN: u1 = 0x1,
                reserved28: u2 = 0x0,
                ///  Power interface clocks enable during Sleep and Stop modes
                PWRSMEN: u1 = 0x1,
                reserved30: u1 = 0x0,
                ///  I2C 3 interface clock enable during sleep mode
                I2C3SMEN_3: u1 = 0x1,
                ///  Low Power Timer1 clock enable during sleep mode
                LPTIM1SMEN: u1 = 0x1,
            }),
            ///  APB1 peripheral clocks enable in Sleep and Stop modes register 2
            APB1SMENR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x103
                ///  Low power UART 1 clocks enable during Sleep and Stop modes
                LPUART1SMEN: u1 = 0x1,
                ///  I2C4 clocks enable during Sleep and Stop modes
                I2C4SMEN: u1 = 0x1,
                reserved8: u6 = 0x0,
                ///  USB PD clock enable during sleep mode
                USBPDSMEN: u1 = 0x1,
                padding: u23 = 0x0,
            }),
            ///  APB2SMENR
            APB2SMENR: mmio.Mmio(packed struct(u32) { // reset_value: 0x437F801
                ///  SYSCFG clocks enable during Sleep and Stop modes
                SYSCFGSMEN: u1 = 0x1,
                reserved11: u10 = 0x0,
                ///  TIM1 timer clocks enable during Sleep and Stop modes
                TIM1SMEN: u1 = 0x1,
                ///  SPI1 clocks enable during Sleep and Stop modes
                SPI1SMEN: u1 = 0x1,
                ///  TIM8 timer clocks enable during Sleep and Stop modes
                TIM8SMEN: u1 = 0x1,
                ///  USART1clocks enable during Sleep and Stop modes
                USART1SMEN: u1 = 0x1,
                ///  SPI4 timer clocks enable during Sleep and Stop modes
                SPI4SMEN: u1 = 0x1,
                ///  TIM15 timer clocks enable during Sleep and Stop modes
                TIM15SMEN: u1 = 0x1,
                ///  TIM16 timer clocks enable during Sleep and Stop modes
                TIM16SMEN: u1 = 0x1,
                ///  TIM17 timer clocks enable during Sleep and Stop modes
                TIM17SMEN: u1 = 0x1,
                reserved20: u1 = 0x0,
                ///  Timer 20clock enable during sleep mode
                TIM20SMEN: u1 = 0x1,
                ///  SAI1 clock enable during sleep mode
                SAI1SMEN: u1 = 0x1,
                reserved26: u4 = 0x0,
                ///  HRTIMER clock enable during sleep mode
                HRTIMERSMEN: u1 = 0x1,
                padding: u5 = 0x0,
            }),
            reserved136: [4]u8,
            ///  CCIPR
            CCIPR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  USART1 clock source selection
                USART1SEL: u2 = 0x0,
                ///  USART2 clock source selection
                USART2SEL: u2 = 0x0,
                ///  USART3 clock source selection
                USART3SEL: u2 = 0x0,
                ///  UART4 clock source selection
                UART4SEL: u2 = 0x0,
                ///  UART5 clock source selection
                UART5SEL: u2 = 0x0,
                ///  LPUART1 clock source selection
                LPUART1SEL: u2 = 0x0,
                ///  I2C1 clock source selection
                I2C1SEL: u2 = 0x0,
                ///  I2C2 clock source selection
                I2C2SEL: u2 = 0x0,
                ///  I2C3 clock source selection
                I2C3SEL: u2 = 0x0,
                ///  Low power timer 1 clock source selection
                LPTIM1SEL: u2 = 0x0,
                ///  Low power timer 2 clock source selection
                SAISEL: u2 = 0x0,
                ///  SAI1 clock source selection
                SPISEL_: u2 = 0x0,
                ///  SAI2 clock source selection
                FDCANSEL: u2 = 0x0,
                ///  48 MHz clock source selection
                CLK48SEL: u2 = 0x0,
                ///  ADCs clock source selection
                ADCSEL: u2 = 0x0,
                ///  ADC3/4/5 clock source selection
                ADC345SEL: u2 = 0x0,
            }),
            reserved144: [4]u8,
            ///  BDCR
            BDCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  LSE oscillator enable
                LSEON: u1 = 0x0,
                ///  LSE oscillator ready
                LSERDY: u1 = 0x0,
                ///  LSE oscillator bypass
                LSEBYP: u1 = 0x0,
                ///  SE oscillator drive capability
                LSEDRV: u2 = 0x0,
                ///  LSECSSON
                LSECSSON: u1 = 0x0,
                ///  LSECSSD
                LSECSSD: u1 = 0x0,
                reserved8: u1 = 0x0,
                ///  RTC clock source selection
                RTCSEL: u2 = 0x0,
                reserved15: u5 = 0x0,
                ///  RTC clock enable
                RTCEN: u1 = 0x0,
                ///  Vswitch domain software reset
                VSWRST: u1 = 0x0,
                reserved24: u7 = 0x0,
                ///  Low speed clock output enable
                LSCCOEN: u1 = 0x0,
                ///  Low speed clock output selection
                LSCOSEL: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  CSR
            CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0xC000000
                ///  LSI oscillator enable
                LSION: u1 = 0x0,
                ///  LSI oscillator ready
                LSIRDY: u1 = 0x0,
                reserved23: u21 = 0x0,
                ///  Remove reset flag
                RMVF: u1 = 0x0,
                reserved25: u1 = 0x0,
                ///  Option byte loader reset flag
                OBLRSTF: u1 = 0x0,
                ///  Pad reset flag
                PADRSTF: u1 = 0x1,
                ///  BOR flag
                BORRSTF: u1 = 0x1,
                ///  Software reset flag
                SFTRSTF: u1 = 0x0,
                ///  Independent window watchdog reset flag
                WDGRSTF: u1 = 0x0,
                ///  Window watchdog reset flag
                WWDGRSTF: u1 = 0x0,
                ///  Low-power reset flag
                LPWRSTF: u1 = 0x0,
            }),
            ///  Clock recovery RC register
            CRRCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HSI48 clock enable
                RC48ON: u1 = 0x0,
                ///  HSI48 clock ready flag
                RC48RDY: u1 = 0x0,
                reserved7: u5 = 0x0,
                ///  HSI48 clock calibration
                RC48CAL: u9 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Peripherals independent clock configuration register
            CCIPR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  I2C4 clock source selection
                I2C4SEL: u2 = 0x0,
                reserved20: u18 = 0x0,
                ///  Octospi clock source selection
                QUADSPISEL: u2 = 0x0,
                padding: u10 = 0x0,
            }),
        };

        ///  Power control
        pub const PWR = extern struct {
            ///  Power control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x200
                ///  Low-power mode selection
                LPMS: u3 = 0x0,
                reserved8: u5 = 0x0,
                ///  Disable backup domain write protection
                DBP: u1 = 0x0,
                ///  Voltage scaling range selection
                VOS: u2 = 0x1,
                reserved14: u3 = 0x0,
                ///  Low-power run
                LPR: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  Power control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Power voltage detector enable
                PVDE: u1 = 0x0,
                ///  Power voltage detector level selection
                PLS: u3 = 0x0,
                ///  Peripheral voltage monitoring 1 enable: VDDA vs. COMP min voltage
                PVMEN1: u1 = 0x0,
                ///  Peripheral voltage monitoring 2 enable: VDDA vs. Fast DAC min voltage
                PVMEN2: u1 = 0x0,
                ///  Peripheral voltage monitoring 3 enable: VDDA vs. ADC min voltage 1.62V
                PVMEN3: u1 = 0x0,
                ///  Peripheral voltage monitoring 4 enable: VDDA vs. OPAMP/DAC min voltage
                PVMEN4: u1 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Power control register 3
            CR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x8000
                ///  Enable Wakeup pin WKUP1
                EWUP1: u1 = 0x0,
                ///  Enable Wakeup pin WKUP2
                EWUP2: u1 = 0x0,
                ///  Enable Wakeup pin WKUP3
                EWUP3: u1 = 0x0,
                ///  Enable Wakeup pin WKUP4
                EWUP4: u1 = 0x0,
                ///  Enable Wakeup pin WKUP5
                EWUP5: u1 = 0x0,
                reserved8: u3 = 0x0,
                ///  SRAM2 retention in Standby mode
                RRS: u1 = 0x0,
                reserved10: u1 = 0x0,
                ///  Apply pull-up and pull-down configuration
                APC: u1 = 0x0,
                reserved13: u2 = 0x0,
                ///  STDBY
                UCPD1_STDBY: u1 = 0x0,
                ///  DBDIS
                UCPD1_DBDIS: u1 = 0x0,
                ///  Enable external WakeUp line
                EIWUL: u1 = 0x1,
                padding: u16 = 0x0,
            }),
            ///  Power control register 4
            CR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Wakeup pin WKUP1 polarity
                WP1: u1 = 0x0,
                ///  Wakeup pin WKUP2 polarity
                WP2: u1 = 0x0,
                ///  Wakeup pin WKUP3 polarity
                WP3: u1 = 0x0,
                ///  Wakeup pin WKUP4 polarity
                WP4: u1 = 0x0,
                ///  Wakeup pin WKUP5 polarity
                WP5: u1 = 0x0,
                reserved8: u3 = 0x0,
                ///  VBAT battery charging enable
                VBE: u1 = 0x0,
                ///  VBAT battery charging resistor selection
                VBRS: u1 = 0x0,
                padding: u22 = 0x0,
            }),
            ///  Power status register 1
            SR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Wakeup flag 1
                WUF1: u1 = 0x0,
                ///  Wakeup flag 2
                WUF2: u1 = 0x0,
                ///  Wakeup flag 3
                WUF3: u1 = 0x0,
                ///  Wakeup flag 4
                WUF4: u1 = 0x0,
                ///  Wakeup flag 5
                WUF5: u1 = 0x0,
                reserved8: u3 = 0x0,
                ///  Standby flag
                SBF: u1 = 0x0,
                reserved15: u6 = 0x0,
                ///  Wakeup flag internal
                WUFI: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power status register 2
            SR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved8: u8 = 0x0,
                ///  Low-power regulator started
                REGLPS: u1 = 0x0,
                ///  Low-power regulator flag
                REGLPF: u1 = 0x0,
                ///  Voltage scaling flag
                VOSF: u1 = 0x0,
                ///  Power voltage detector output
                PVDO: u1 = 0x0,
                ///  Peripheral voltage monitoring output: VDDUSB vs. 1.2 V
                PVMO1: u1 = 0x0,
                ///  Peripheral voltage monitoring output: VDDIO2 vs. 0.9 V
                PVMO2: u1 = 0x0,
                ///  Peripheral voltage monitoring output: VDDA vs. 1.62 V
                PVMO3: u1 = 0x0,
                ///  Peripheral voltage monitoring output: VDDA vs. 2.2 V
                PVMO4: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power status clear register
            SCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Clear wakeup flag 1
                CWUF1: u1 = 0x0,
                ///  Clear wakeup flag 2
                CWUF2: u1 = 0x0,
                ///  Clear wakeup flag 3
                CWUF3: u1 = 0x0,
                ///  Clear wakeup flag 4
                CWUF4: u1 = 0x0,
                ///  Clear wakeup flag 5
                CWUF5: u1 = 0x0,
                reserved8: u3 = 0x0,
                ///  Clear standby flag
                CSBF: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            reserved32: [4]u8,
            ///  Power Port A pull-up control register
            PUCRA: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port A pull-up bit y (y=0..15)
                PU0: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU1: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU2: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU3: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU4: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU5: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU6: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU7: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU8: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU9: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU10: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU11: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU12: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU13: u1 = 0x0,
                reserved15: u1 = 0x0,
                ///  Port A pull-up bit y (y=0..15)
                PU15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port A pull-down control register
            PDCRA: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port A pull-down bit y (y=0..15)
                PD0: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD1: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD2: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD3: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD4: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD5: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD6: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD7: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD8: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD9: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD10: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD11: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD12: u1 = 0x0,
                reserved14: u1 = 0x0,
                ///  Port A pull-down bit y (y=0..15)
                PD14: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  Power Port B pull-up control register
            PUCRB: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port B pull-up bit y (y=0..15)
                PU0: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU1: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU2: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU3: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU4: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU5: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU6: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU7: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU8: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU9: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU10: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU11: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU12: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU13: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU14: u1 = 0x0,
                ///  Port B pull-up bit y (y=0..15)
                PU15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port B pull-down control register
            PDCRB: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port B pull-down bit y (y=0..15)
                PD0: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD1: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD2: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD3: u1 = 0x0,
                reserved5: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD5: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD6: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD7: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD8: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD9: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD10: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD11: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD12: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD13: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD14: u1 = 0x0,
                ///  Port B pull-down bit y (y=0..15)
                PD15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port C pull-up control register
            PUCRC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port C pull-up bit y (y=0..15)
                PU0: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU1: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU2: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU3: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU4: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU5: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU6: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU7: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU8: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU9: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU10: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU11: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU12: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU13: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU14: u1 = 0x0,
                ///  Port C pull-up bit y (y=0..15)
                PU15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port C pull-down control register
            PDCRC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port C pull-down bit y (y=0..15)
                PD0: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD1: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD2: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD3: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD4: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD5: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD6: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD7: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD8: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD9: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD10: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD11: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD12: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD13: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD14: u1 = 0x0,
                ///  Port C pull-down bit y (y=0..15)
                PD15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port D pull-up control register
            PUCRD: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port D pull-up bit y (y=0..15)
                PU0: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU1: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU2: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU3: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU4: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU5: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU6: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU7: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU8: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU9: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU10: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU11: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU12: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU13: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU14: u1 = 0x0,
                ///  Port D pull-up bit y (y=0..15)
                PU15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port D pull-down control register
            PDCRD: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port D pull-down bit y (y=0..15)
                PD0: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD1: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD2: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD3: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD4: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD5: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD6: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD7: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD8: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD9: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD10: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD11: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD12: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD13: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD14: u1 = 0x0,
                ///  Port D pull-down bit y (y=0..15)
                PD15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port E pull-up control register
            PUCRE: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port E pull-up bit y (y=0..15)
                PU0: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU1: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU2: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU3: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU4: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU5: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU6: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU7: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU8: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU9: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU10: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU11: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU12: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU13: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU14: u1 = 0x0,
                ///  Port E pull-up bit y (y=0..15)
                PU15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port E pull-down control register
            PDCRE: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port E pull-down bit y (y=0..15)
                PD0: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD1: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD2: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD3: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD4: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD5: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD6: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD7: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD8: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD9: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD10: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD11: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD12: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD13: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD14: u1 = 0x0,
                ///  Port E pull-down bit y (y=0..15)
                PD15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port F pull-up control register
            PUCRF: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port F pull-up bit y (y=0..15)
                PU0: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU1: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU2: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU3: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU4: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU5: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU6: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU7: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU8: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU9: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU10: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU11: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU12: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU13: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU14: u1 = 0x0,
                ///  Port F pull-up bit y (y=0..15)
                PU15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port F pull-down control register
            PDCRF: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port F pull-down bit y (y=0..15)
                PD0: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD1: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD2: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD3: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD4: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD5: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD6: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD7: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD8: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD9: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD10: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD11: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD12: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD13: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD14: u1 = 0x0,
                ///  Port F pull-down bit y (y=0..15)
                PD15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Power Port G pull-up control register
            PUCRG: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port G pull-up bit y (y=0..15)
                PU0: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU1: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU2: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU3: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU4: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU5: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU6: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU7: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU8: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU9: u1 = 0x0,
                ///  Port G pull-up bit y (y=0..15)
                PU10: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  Power Port G pull-down control register
            PDCRG: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port G pull-down bit y (y=0..15)
                PD0: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD1: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD2: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD3: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD4: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD5: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD6: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD7: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD8: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD9: u1 = 0x0,
                ///  Port G pull-down bit y (y=0..15)
                PD10: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            reserved128: [40]u8,
            ///  Power control register 5
            CR5: mmio.Mmio(packed struct(u32) { // reset_value: 0x100
                ///  Main regular range 1 mode
                R1MODE: u1 = 0x0,
                padding: u31 = 0x80,
            }),
        };

        ///  Random number generator
        pub const RNG = extern struct {
            ///  control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved2: u2 = 0x0,
                ///  Random number generator enable
                RNGEN: u1 = 0x0,
                ///  Interrupt enable
                IE: u1 = 0x0,
                reserved5: u1 = 0x0,
                ///  Clock error detection
                CED: u1 = 0x0,
                padding: u26 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Data ready
                DRDY: u1 = 0x0,
                ///  Clock error current status
                CECS: u1 = 0x0,
                ///  Seed error current status
                SECS: u1 = 0x0,
                reserved5: u2 = 0x0,
                ///  Clock error interrupt status
                CEIS: u1 = 0x0,
                ///  Seed error interrupt status
                SEIS: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  data register
            DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Random data
                RNDATA: u32 = 0x0,
            }),
        };

        ///  General-purpose I/Os
        pub const GPIOA = extern struct {
            ///  GPIO port mode register
            MODER: mmio.Mmio(packed struct(u32) { // reset_value: 0xABFFFFFF
                ///  Port x configuration bits (y = 0..15)
                MODER0: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER1: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER2: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER3: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER4: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER5: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER6: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER7: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER8: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER9: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER10: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER11: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER12: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER13: u2 = 0x2,
                ///  Port x configuration bits (y = 0..15)
                MODER14: u2 = 0x2,
                ///  Port x configuration bits (y = 0..15)
                MODER15: u2 = 0x2,
            }),
            ///  GPIO port output type register
            OTYPER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x configuration bits (y = 0..15)
                OT0: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT1: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT2: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT3: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT4: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT5: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT6: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT7: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT8: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT9: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT10: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT11: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT12: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT13: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT14: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  GPIO port output speed register
            OSPEEDR: mmio.Mmio(packed struct(u32) { // reset_value: 0xC000000
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR0: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR1: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR2: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR3: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR4: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR5: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR6: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR7: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR8: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR9: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR10: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR11: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR12: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR13: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR14: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR15: u2 = 0x0,
            }),
            ///  GPIO port pull-up/pull-down register
            PUPDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x64000000
                ///  Port x configuration bits (y = 0..15)
                PUPDR0: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR1: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR2: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR3: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR4: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR5: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR6: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR7: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR8: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR9: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR10: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR11: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR12: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR13: u2 = 0x1,
                ///  Port x configuration bits (y = 0..15)
                PUPDR14: u2 = 0x2,
                ///  Port x configuration bits (y = 0..15)
                PUPDR15: u2 = 0x1,
            }),
            ///  GPIO port input data register
            IDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port input data (y = 0..15)
                IDR0: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR1: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR2: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR3: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR4: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR5: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR6: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR7: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR8: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR9: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR10: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR11: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR12: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR13: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR14: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  GPIO port output data register
            ODR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port output data (y = 0..15)
                ODR0: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR1: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR2: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR3: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR4: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR5: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR6: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR7: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR8: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR9: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR10: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR11: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR12: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR13: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR14: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  GPIO port bit set/reset register
            BSRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x set bit y (y= 0..15)
                BS0: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS1: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS2: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS3: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS4: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS5: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS6: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS7: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS8: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS9: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS10: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS11: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS12: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS13: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS14: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS15: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BR0: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR1: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR2: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR3: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR4: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR5: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR6: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR7: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR8: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR9: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR10: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR11: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR12: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR13: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR14: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR15: u1 = 0x0,
            }),
            ///  GPIO port configuration lock register
            LCKR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x lock bit y (y= 0..15)
                LCK0: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK1: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK2: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK3: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK4: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK5: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK6: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK7: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK8: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK9: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK10: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK11: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK12: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK13: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK14: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK15: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCKK: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  GPIO alternate function low register
            AFRL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL0: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL1: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL2: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL3: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL4: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL5: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL6: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL7: u4 = 0x0,
            }),
            ///  GPIO alternate function high register
            AFRH: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH8: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH9: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH10: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH11: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH12: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH13: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH14: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH15: u4 = 0x0,
            }),
            ///  GPIO port bit reset register
            BRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port Reset bit
                BR0: u1 = 0x0,
                ///  Port Reset bit
                BR1: u1 = 0x0,
                ///  Port Reset bit
                BR2: u1 = 0x0,
                ///  Port Reset bit
                BR3: u1 = 0x0,
                ///  Port Reset bit
                BR4: u1 = 0x0,
                ///  Port Reset bit
                BR5: u1 = 0x0,
                ///  Port Reset bit
                BR6: u1 = 0x0,
                ///  Port Reset bit
                BR7: u1 = 0x0,
                ///  Port Reset bit
                BR8: u1 = 0x0,
                ///  Port Reset bit
                BR9: u1 = 0x0,
                ///  Port Reset bit
                BR10: u1 = 0x0,
                ///  Port Reset bit
                BR11: u1 = 0x0,
                ///  Port Reset bit
                BR12: u1 = 0x0,
                ///  Port Reset bit
                BR13: u1 = 0x0,
                ///  Port Reset bit
                BR14: u1 = 0x0,
                ///  Port Reset bit
                BR15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
        };

        ///  General-purpose I/Os
        pub const GPIOB = extern struct {
            ///  GPIO port mode register
            MODER: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFEBF
                ///  Port x configuration bits (y = 0..15)
                MODER0: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER1: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER2: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER3: u2 = 0x2,
                ///  Port x configuration bits (y = 0..15)
                MODER4: u2 = 0x2,
                ///  Port x configuration bits (y = 0..15)
                MODER5: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER6: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER7: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER8: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER9: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER10: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER11: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER12: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER13: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER14: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER15: u2 = 0x3,
            }),
            ///  GPIO port output type register
            OTYPER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x configuration bits (y = 0..15)
                OT0: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT1: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT2: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT3: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT4: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT5: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT6: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT7: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT8: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT9: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT10: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT11: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT12: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT13: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT14: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  GPIO port output speed register
            OSPEEDR: mmio.Mmio(packed struct(u32) { // reset_value: 0xC0
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR0: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR1: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR2: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR3: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR4: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR5: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR6: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR7: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR8: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR9: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR10: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR11: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR12: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR13: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR14: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR15: u2 = 0x0,
            }),
            ///  GPIO port pull-up/pull-down register
            PUPDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x100
                ///  Port x configuration bits (y = 0..15)
                PUPDR0: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR1: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR2: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR3: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR4: u2 = 0x1,
                ///  Port x configuration bits (y = 0..15)
                PUPDR5: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR6: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR7: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR8: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR9: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR10: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR11: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR12: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR13: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR14: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR15: u2 = 0x0,
            }),
            ///  GPIO port input data register
            IDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port input data (y = 0..15)
                IDR0: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR1: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR2: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR3: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR4: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR5: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR6: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR7: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR8: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR9: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR10: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR11: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR12: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR13: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR14: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  GPIO port output data register
            ODR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port output data (y = 0..15)
                ODR0: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR1: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR2: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR3: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR4: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR5: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR6: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR7: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR8: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR9: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR10: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR11: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR12: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR13: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR14: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  GPIO port bit set/reset register
            BSRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x set bit y (y= 0..15)
                BS0: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS1: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS2: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS3: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS4: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS5: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS6: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS7: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS8: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS9: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS10: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS11: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS12: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS13: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS14: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS15: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BR0: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR1: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR2: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR3: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR4: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR5: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR6: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR7: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR8: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR9: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR10: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR11: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR12: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR13: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR14: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR15: u1 = 0x0,
            }),
            ///  GPIO port configuration lock register
            LCKR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x lock bit y (y= 0..15)
                LCK0: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK1: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK2: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK3: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK4: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK5: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK6: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK7: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK8: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK9: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK10: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK11: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK12: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK13: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK14: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK15: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCKK: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  GPIO alternate function low register
            AFRL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL0: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL1: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL2: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL3: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL4: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL5: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL6: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL7: u4 = 0x0,
            }),
            ///  GPIO alternate function high register
            AFRH: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH8: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH9: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH10: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH11: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH12: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH13: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH14: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH15: u4 = 0x0,
            }),
            ///  GPIO port bit reset register
            BRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port Reset bit
                BR0: u1 = 0x0,
                ///  Port Reset bit
                BR1: u1 = 0x0,
                ///  Port Reset bit
                BR2: u1 = 0x0,
                ///  Port Reset bit
                BR3: u1 = 0x0,
                ///  Port Reset bit
                BR4: u1 = 0x0,
                ///  Port Reset bit
                BR5: u1 = 0x0,
                ///  Port Reset bit
                BR6: u1 = 0x0,
                ///  Port Reset bit
                BR7: u1 = 0x0,
                ///  Port Reset bit
                BR8: u1 = 0x0,
                ///  Port Reset bit
                BR9: u1 = 0x0,
                ///  Port Reset bit
                BR10: u1 = 0x0,
                ///  Port Reset bit
                BR11: u1 = 0x0,
                ///  Port Reset bit
                BR12: u1 = 0x0,
                ///  Port Reset bit
                BR13: u1 = 0x0,
                ///  Port Reset bit
                BR14: u1 = 0x0,
                ///  Port Reset bit
                BR15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
        };

        ///  General-purpose I/Os
        pub const GPIOC = extern struct {
            ///  GPIO port mode register
            MODER: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFFF
                ///  Port x configuration bits (y = 0..15)
                MODER0: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER1: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER2: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER3: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER4: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER5: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER6: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER7: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER8: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER9: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER10: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER11: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER12: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER13: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER14: u2 = 0x3,
                ///  Port x configuration bits (y = 0..15)
                MODER15: u2 = 0x3,
            }),
            ///  GPIO port output type register
            OTYPER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x configuration bits (y = 0..15)
                OT0: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT1: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT2: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT3: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT4: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT5: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT6: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT7: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT8: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT9: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT10: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT11: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT12: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT13: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT14: u1 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OT15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  GPIO port output speed register
            OSPEEDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR0: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR1: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR2: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR3: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR4: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR5: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR6: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR7: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR8: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR9: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR10: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR11: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR12: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR13: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR14: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                OSPEEDR15: u2 = 0x0,
            }),
            ///  GPIO port pull-up/pull-down register
            PUPDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x configuration bits (y = 0..15)
                PUPDR0: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR1: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR2: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR3: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR4: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR5: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR6: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR7: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR8: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR9: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR10: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR11: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR12: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR13: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR14: u2 = 0x0,
                ///  Port x configuration bits (y = 0..15)
                PUPDR15: u2 = 0x0,
            }),
            ///  GPIO port input data register
            IDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port input data (y = 0..15)
                IDR0: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR1: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR2: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR3: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR4: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR5: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR6: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR7: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR8: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR9: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR10: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR11: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR12: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR13: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR14: u1 = 0x0,
                ///  Port input data (y = 0..15)
                IDR15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  GPIO port output data register
            ODR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port output data (y = 0..15)
                ODR0: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR1: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR2: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR3: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR4: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR5: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR6: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR7: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR8: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR9: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR10: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR11: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR12: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR13: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR14: u1 = 0x0,
                ///  Port output data (y = 0..15)
                ODR15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  GPIO port bit set/reset register
            BSRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x set bit y (y= 0..15)
                BS0: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS1: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS2: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS3: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS4: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS5: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS6: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS7: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS8: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS9: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS10: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS11: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS12: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS13: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS14: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BS15: u1 = 0x0,
                ///  Port x set bit y (y= 0..15)
                BR0: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR1: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR2: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR3: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR4: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR5: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR6: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR7: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR8: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR9: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR10: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR11: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR12: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR13: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR14: u1 = 0x0,
                ///  Port x reset bit y (y = 0..15)
                BR15: u1 = 0x0,
            }),
            ///  GPIO port configuration lock register
            LCKR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port x lock bit y (y= 0..15)
                LCK0: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK1: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK2: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK3: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK4: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK5: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK6: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK7: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK8: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK9: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK10: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK11: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK12: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK13: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK14: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCK15: u1 = 0x0,
                ///  Port x lock bit y (y= 0..15)
                LCKK: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  GPIO alternate function low register
            AFRL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL0: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL1: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL2: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL3: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL4: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL5: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL6: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 0..7)
                AFRL7: u4 = 0x0,
            }),
            ///  GPIO alternate function high register
            AFRH: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH8: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH9: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH10: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH11: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH12: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH13: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH14: u4 = 0x0,
                ///  Alternate function selection for port x bit y (y = 8..15)
                AFRH15: u4 = 0x0,
            }),
            ///  GPIO port bit reset register
            BRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Port Reset bit
                BR0: u1 = 0x0,
                ///  Port Reset bit
                BR1: u1 = 0x0,
                ///  Port Reset bit
                BR2: u1 = 0x0,
                ///  Port Reset bit
                BR3: u1 = 0x0,
                ///  Port Reset bit
                BR4: u1 = 0x0,
                ///  Port Reset bit
                BR5: u1 = 0x0,
                ///  Port Reset bit
                BR6: u1 = 0x0,
                ///  Port Reset bit
                BR7: u1 = 0x0,
                ///  Port Reset bit
                BR8: u1 = 0x0,
                ///  Port Reset bit
                BR9: u1 = 0x0,
                ///  Port Reset bit
                BR10: u1 = 0x0,
                ///  Port Reset bit
                BR11: u1 = 0x0,
                ///  Port Reset bit
                BR12: u1 = 0x0,
                ///  Port Reset bit
                BR13: u1 = 0x0,
                ///  Port Reset bit
                BR14: u1 = 0x0,
                ///  Port Reset bit
                BR15: u1 = 0x0,
                padding: u16 = 0x0,
            }),
        };

        ///  QuadSPI interface
        pub const QUADSPI = extern struct {
            ///  control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Enable
                EN: u1 = 0x0,
                ///  Abort request
                ABORT: u1 = 0x0,
                ///  DMA enable
                DMAEN: u1 = 0x0,
                ///  Timeout counter enable
                TCEN: u1 = 0x0,
                ///  Sample shift
                SSHIFT: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  DFM
                DFM: u1 = 0x0,
                ///  FSEL
                FSEL: u1 = 0x0,
                ///  IFO threshold level
                FTHRES: u5 = 0x0,
                reserved16: u3 = 0x0,
                ///  Transfer error interrupt enable
                TEIE: u1 = 0x0,
                ///  Transfer complete interrupt enable
                TCIE: u1 = 0x0,
                ///  FIFO threshold interrupt enable
                FTIE: u1 = 0x0,
                ///  Status match interrupt enable
                SMIE: u1 = 0x0,
                ///  TimeOut interrupt enable
                TOIE: u1 = 0x0,
                reserved22: u1 = 0x0,
                ///  Automatic poll mode stop
                APMS: u1 = 0x0,
                ///  Polling match mode
                PMM: u1 = 0x0,
                ///  Clock prescaler
                PRESCALER: u8 = 0x0,
            }),
            ///  device configuration register
            DCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Mode 0 / mode 3
                CKMODE: u1 = 0x0,
                reserved8: u7 = 0x0,
                ///  Chip select high time
                CSHT: u3 = 0x0,
                reserved16: u5 = 0x0,
                ///  FLASH memory size
                FSIZE: u5 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Transfer error flag
                TEF: u1 = 0x0,
                ///  Transfer complete flag
                TCF: u1 = 0x0,
                ///  FIFO threshold flag
                FTF: u1 = 0x0,
                ///  Status match flag
                SMF: u1 = 0x0,
                ///  Timeout flag
                TOF: u1 = 0x0,
                ///  Busy
                BUSY: u1 = 0x0,
                reserved8: u2 = 0x0,
                ///  FIFO level
                FLEVEL: u5 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  flag clear register
            FCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Clear transfer error flag
                CTEF: u1 = 0x0,
                ///  Clear transfer complete flag
                CTCF: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  Clear status match flag
                CSMF: u1 = 0x0,
                ///  Clear timeout flag
                CTOF: u1 = 0x0,
                padding: u27 = 0x0,
            }),
            ///  data length register
            DLR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Data length
                DL: u32 = 0x0,
            }),
            ///  communication configuration register
            CCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Instruction
                INSTRUCTION: u8 = 0x0,
                ///  Instruction mode
                IMODE: u2 = 0x0,
                ///  Address mode
                ADMODE: u2 = 0x0,
                ///  Address size
                ADSIZE: u2 = 0x0,
                ///  Alternate bytes mode
                ABMODE: u2 = 0x0,
                ///  Alternate bytes size
                ABSIZE: u2 = 0x0,
                ///  Number of dummy cycles
                DCYC: u5 = 0x0,
                reserved24: u1 = 0x0,
                ///  Data mode
                DMODE: u2 = 0x0,
                ///  Functional mode
                FMODE: u2 = 0x0,
                ///  Send instruction only once mode
                SIOO: u1 = 0x0,
                reserved31: u2 = 0x0,
                ///  Double data rate mode
                DDRM: u1 = 0x0,
            }),
            ///  address register
            AR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Address
                ADDRESS: u32 = 0x0,
            }),
            ///  ABR
            ABR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ALTERNATE
                ALTERNATE: u32 = 0x0,
            }),
            ///  data register
            DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Data
                DATA: u32 = 0x0,
            }),
            ///  polling status mask register
            PSMKR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Status mask
                MASK: u32 = 0x0,
            }),
            ///  polling status match register
            PSMAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Status match
                MATCH: u32 = 0x0,
            }),
            ///  polling interval register
            PIR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Polling interval
                INTERVAL: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  low-power timeout register
            LPTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timeout period
                TIMEOUT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
        };

        ///  Digital-to-analog converter
        pub const DAC1 = extern struct {
            ///  DAC control register
            DAC_CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel1 enable This bit is set and cleared by software to enable/disable DAC channel1.
                EN1: u1 = 0x0,
                ///  DAC channel1 trigger enable
                TEN1: u1 = 0x0,
                ///  DAC channel1 trigger selection These bits select the external event used to trigger DAC channel1. Note: Only used if bit TEN1 = 1 (DAC channel1 trigger enabled).
                TSEL1: u4 = 0x0,
                ///  DAC channel1 noise/triangle wave generation enable These bits are set and cleared by software. Note: Only used if bit TEN1 = 1 (DAC channel1 trigger enabled).
                WAVE1: u2 = 0x0,
                ///  DAC channel1 mask/amplitude selector These bits are written by software to select mask in wave generation mode or amplitude in triangle generation mode. = 1011: Unmask bits[11:0] of LFSR/ triangle amplitude equal to 4095
                MAMP1: u4 = 0x0,
                ///  DAC channel1 DMA enable This bit is set and cleared by software.
                DMAEN1: u1 = 0x0,
                ///  DAC channel1 DMA Underrun Interrupt enable This bit is set and cleared by software.
                DMAUDRIE1: u1 = 0x0,
                ///  DAC Channel 1 calibration enable This bit is set and cleared by software to enable/disable DAC channel 1 calibration, it can be written only if bit EN1=0 into DAC_CR (the calibration mode can be entered/exit only when the DAC channel is disabled) Otherwise, the write operation is ignored.
                CEN1: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  DAC channel2 enable This bit is set and cleared by software to enable/disable DAC channel2.
                EN2: u1 = 0x0,
                ///  DAC channel2 trigger enable
                TEN2: u1 = 0x0,
                ///  DAC channel2 trigger selection These bits select the external event used to trigger DAC channel2 Note: Only used if bit TEN2 = 1 (DAC channel2 trigger enabled).
                TSEL2: u4 = 0x0,
                ///  DAC channel2 noise/triangle wave generation enable These bits are set/reset by software. 1x: Triangle wave generation enabled Note: Only used if bit TEN2 = 1 (DAC channel2 trigger enabled)
                WAVE2: u2 = 0x0,
                ///  DAC channel2 mask/amplitude selector These bits are written by software to select mask in wave generation mode or amplitude in triangle generation mode. = 1011: Unmask bits[11:0] of LFSR/ triangle amplitude equal to 4095
                MAMP2: u4 = 0x0,
                ///  DAC channel2 DMA enable This bit is set and cleared by software.
                DMAEN2: u1 = 0x0,
                ///  DAC channel2 DMA underrun interrupt enable This bit is set and cleared by software.
                DMAUDRIE2: u1 = 0x0,
                ///  DAC Channel 2 calibration enable This bit is set and cleared by software to enable/disable DAC channel 2 calibration, it can be written only if bit EN2=0 into DAC_CR (the calibration mode can be entered/exit only when the DAC channel is disabled) Otherwise, the write operation is ignored.
                CEN2: u1 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  DAC software trigger register
            DAC_SWTRGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel1 software trigger This bit is set by software to trigger the DAC in software trigger mode. Note: This bit is cleared by hardware (one APB1 clock cycle later) once the DAC_DHR1 register value has been loaded into the DAC_DOR1 register.
                SWTRIG1: u1 = 0x0,
                ///  DAC channel2 software trigger This bit is set by software to trigger the DAC in software trigger mode. Note: This bit is cleared by hardware (one APB1 clock cycle later) once the DAC_DHR2 register value has been loaded into the DAC_DOR2 register.
                SWTRIG2: u1 = 0x0,
                reserved16: u14 = 0x0,
                ///  DAC channel1 software trigger B
                SWTRIGB1: u1 = 0x0,
                ///  DAC channel2 software trigger B
                SWTRIGB2: u1 = 0x0,
                padding: u14 = 0x0,
            }),
            ///  DAC channel1 12-bit right-aligned data holding register
            DAC_DHR12R1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel1 12-bit right-aligned data These bits are written by software which specifies 12-bit data for DAC channel1.
                DACC1DHR: u12 = 0x0,
                reserved16: u4 = 0x0,
                ///  DAC channel1 12-bit right-aligned data B
                DACC1DHRB: u12 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  DAC channel1 12-bit left aligned data holding register
            DAC_DHR12L1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved4: u4 = 0x0,
                ///  DAC channel1 12-bit left-aligned data These bits are written by software which specifies 12-bit data for DAC channel1.
                DACC1DHR: u12 = 0x0,
                reserved20: u4 = 0x0,
                ///  DAC channel1 12-bit left-aligned data B
                DACC1DHRB: u12 = 0x0,
            }),
            ///  DAC channel1 8-bit right aligned data holding register
            DAC_DHR8R1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel1 8-bit right-aligned data These bits are written by software which specifies 8-bit data for DAC channel1.
                DACC1DHR: u8 = 0x0,
                ///  DAC channel1 8-bit right-aligned data
                DACC1DHRB: u8 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DAC channel2 12-bit right aligned data holding register
            DAC_DHR12R2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel2 12-bit right-aligned data These bits are written by software which specifies 12-bit data for DAC channel2.
                DACC2DHR: u12 = 0x0,
                reserved16: u4 = 0x0,
                ///  DAC channel2 12-bit right-aligned data
                DACC2DHRB: u12 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  DAC channel2 12-bit left aligned data holding register
            DAC_DHR12L2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved4: u4 = 0x0,
                ///  DAC channel2 12-bit left-aligned data These bits are written by software which specify 12-bit data for DAC channel2.
                DACC2DHR: u12 = 0x0,
                reserved20: u4 = 0x0,
                ///  DAC channel2 12-bit left-aligned data B
                DACC2DHRB: u12 = 0x0,
            }),
            ///  DAC channel2 8-bit right-aligned data holding register
            DAC_DHR8R2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel2 8-bit right-aligned data These bits are written by software which specifies 8-bit data for DAC channel2.
                DACC2DHR: u8 = 0x0,
                ///  DAC channel2 8-bit right-aligned data
                DACC2DHRB: u8 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Dual DAC 12-bit right-aligned data holding register
            DAC_DHR12RD: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel1 12-bit right-aligned data These bits are written by software which specifies 12-bit data for DAC channel1.
                DACC1DHR: u12 = 0x0,
                reserved16: u4 = 0x0,
                ///  DAC channel2 12-bit right-aligned data These bits are written by software which specifies 12-bit data for DAC channel2.
                DACC2DHR: u12 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  DUAL DAC 12-bit left aligned data holding register
            DAC_DHR12LD: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved4: u4 = 0x0,
                ///  DAC channel1 12-bit left-aligned data These bits are written by software which specifies 12-bit data for DAC channel1.
                DACC1DHR: u12 = 0x0,
                reserved20: u4 = 0x0,
                ///  DAC channel2 12-bit left-aligned data These bits are written by software which specifies 12-bit data for DAC channel2.
                DACC2DHR: u12 = 0x0,
            }),
            ///  DUAL DAC 8-bit right aligned data holding register
            DAC_DHR8RD: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel1 8-bit right-aligned data These bits are written by software which specifies 8-bit data for DAC channel1.
                DACC1DHR: u8 = 0x0,
                ///  DAC channel2 8-bit right-aligned data These bits are written by software which specifies 8-bit data for DAC channel2.
                DACC2DHR: u8 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DAC channel1 data output register
            DAC_DOR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel1 data output These bits are read-only, they contain data output for DAC channel1.
                DACC1DOR: u12 = 0x0,
                reserved16: u4 = 0x0,
                ///  DAC channel1 data output
                DACC1DORB: u12 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  DAC channel2 data output register
            DAC_DOR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC channel2 data output These bits are read-only, they contain data output for DAC channel2.
                DACC2DOR: u12 = 0x0,
                reserved16: u4 = 0x0,
                ///  DAC channel2 data output
                DACC2DORB: u12 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  DAC status register
            DAC_SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved11: u11 = 0x0,
                ///  DAC channel1 ready status bit
                DAC1RDY: u1 = 0x0,
                ///  DAC channel1 output register status bit
                DORSTAT1: u1 = 0x0,
                ///  DAC channel1 DMA underrun flag This bit is set by hardware and cleared by software (by writing it to 1).
                DMAUDR1: u1 = 0x0,
                ///  DAC Channel 1 calibration offset status This bit is set and cleared by hardware
                CAL_FLAG1: u1 = 0x0,
                ///  DAC Channel 1 busy writing sample time flag This bit is systematically set just after Sample & Hold mode enable and is set each time the software writes the register DAC_SHSR1, It is cleared by hardware when the write operation of DAC_SHSR1 is complete. (It takes about 3LSI periods of synchronization).
                BWST1: u1 = 0x0,
                reserved27: u11 = 0x0,
                ///  DAC channel 2 ready status bit
                DAC2RDY: u1 = 0x0,
                ///  DAC channel 2 output register status bit
                DORSTAT2: u1 = 0x0,
                ///  DAC channel2 DMA underrun flag This bit is set by hardware and cleared by software (by writing it to 1).
                DMAUDR2: u1 = 0x0,
                ///  DAC Channel 2 calibration offset status This bit is set and cleared by hardware
                CAL_FLAG2: u1 = 0x0,
                ///  DAC Channel 2 busy writing sample time flag This bit is systematically set just after Sample & Hold mode enable and is set each time the software writes the register DAC_SHSR2, It is cleared by hardware when the write operation of DAC_SHSR2 is complete. (It takes about 3 LSI periods of synchronization).
                BWST2: u1 = 0x0,
            }),
            ///  DAC calibration control register
            DAC_CCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC Channel 1 offset trimming value
                OTRIM1: u5 = 0x0,
                reserved16: u11 = 0x0,
                ///  DAC Channel 2 offset trimming value
                OTRIM2: u5 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  DAC mode control register
            DAC_MCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC Channel 1 mode These bits can be written only when the DAC is disabled and not in the calibration mode (when bit EN1=0 and bit CEN1 =0 in the DAC_CR register). If EN1=1 or CEN1 =1 the write operation is ignored. They can be set and cleared by software to select the DAC Channel 1 mode: DAC Channel 1 in normal Mode DAC Channel 1 in sample &amp; hold mode
                MODE1: u3 = 0x0,
                reserved8: u5 = 0x0,
                ///  DAC Channel1 DMA double data mode
                DMADOUBLE1: u1 = 0x0,
                ///  Enable signed format for DAC channel1
                SINFORMAT1: u1 = 0x0,
                reserved14: u4 = 0x0,
                ///  High frequency interface mode selection
                HFSEL: u2 = 0x0,
                ///  DAC Channel 2 mode These bits can be written only when the DAC is disabled and not in the calibration mode (when bit EN2=0 and bit CEN2 =0 in the DAC_CR register). If EN2=1 or CEN2 =1 the write operation is ignored. They can be set and cleared by software to select the DAC Channel 2 mode: DAC Channel 2 in normal Mode DAC Channel 2 in sample &amp; hold mode
                MODE2: u3 = 0x0,
                reserved24: u5 = 0x0,
                ///  DAC Channel2 DMA double data mode
                DMADOUBLE2: u1 = 0x0,
                ///  Enable signed format for DAC channel2
                SINFORMAT2: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  DAC Sample and Hold sample time register 1
            DAC_SHSR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC Channel 1 sample Time (only valid in sample &amp; hold mode) These bits can be written when the DAC channel1 is disabled or also during normal operation. in the latter case, the write can be done only when BWSTx of DAC_SR register is low, If BWSTx=1, the write operation is ignored.
                TSAMPLE1: u10 = 0x0,
                padding: u22 = 0x0,
            }),
            ///  DAC Sample and Hold sample time register 2
            DAC_SHSR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC Channel 2 sample Time (only valid in sample &amp; hold mode) These bits can be written when the DAC channel2 is disabled or also during normal operation. in the latter case, the write can be done only when BWSTx of DAC_SR register is low, if BWSTx=1, the write operation is ignored.
                TSAMPLE2: u10 = 0x0,
                padding: u22 = 0x0,
            }),
            ///  DAC Sample and Hold hold time register
            DAC_SHHR: mmio.Mmio(packed struct(u32) { // reset_value: 0x10001
                ///  DAC Channel 1 hold Time (only valid in sample &amp; hold mode) Hold time= (THOLD[9:0]) x T LSI
                THOLD1: u10 = 0x1,
                reserved16: u6 = 0x0,
                ///  DAC Channel 2 hold time (only valid in sample &amp; hold mode). Hold time= (THOLD[9:0]) x T LSI
                THOLD2: u10 = 0x1,
                padding: u6 = 0x0,
            }),
            ///  DAC Sample and Hold refresh time register
            DAC_SHRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x10001
                ///  DAC Channel 1 refresh Time (only valid in sample &amp; hold mode) Refresh time= (TREFRESH[7:0]) x T LSI
                TREFRESH1: u8 = 0x1,
                reserved16: u8 = 0x0,
                ///  DAC Channel 2 refresh Time (only valid in sample &amp; hold mode) Refresh time= (TREFRESH[7:0]) x T LSI
                TREFRESH2: u8 = 0x1,
                padding: u8 = 0x0,
            }),
            reserved88: [8]u8,
            ///  Sawtooth register
            DAC_STR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC Channel 1 Sawtooth reset value
                STRSTDATA1: u12 = 0x0,
                ///  DAC Channel1 Sawtooth direction setting
                STDIR1: u1 = 0x0,
                reserved16: u3 = 0x0,
                ///  DAC CH1 Sawtooth increment value (12.4 bit format)
                STINCDATA1: u16 = 0x0,
            }),
            ///  Sawtooth register
            DAC_STR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC Channel 2 Sawtooth reset value
                STRSTDATA2: u12 = 0x0,
                ///  DAC Channel2 Sawtooth direction setting
                STDIR2: u1 = 0x0,
                reserved16: u3 = 0x0,
                ///  DAC CH2 Sawtooth increment value (12.4 bit format)
                STINCDATA2: u16 = 0x0,
            }),
            ///  Sawtooth Mode register
            DAC_STMODR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DAC Channel 1 Sawtooth Reset trigger selection
                STRSTTRIGSEL1: u4 = 0x0,
                reserved8: u4 = 0x0,
                ///  DAC Channel 1 Sawtooth Increment trigger selection
                STINCTRIGSEL1: u4 = 0x0,
                reserved16: u4 = 0x0,
                ///  DAC Channel 1 Sawtooth Reset trigger selection
                STRSTTRIGSEL2: u4 = 0x0,
                reserved24: u4 = 0x0,
                ///  DAC Channel 2 Sawtooth Increment trigger selection
                STINCTRIGSEL2: u4 = 0x0,
                padding: u4 = 0x0,
            }),
        };

        ///  Analog-to-Digital Converter
        pub const ADC3 = extern struct {
            ///  interrupt and status register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADRDY
                ADRDY: u1 = 0x0,
                ///  EOSMP
                EOSMP: u1 = 0x0,
                ///  EOC
                EOC: u1 = 0x0,
                ///  EOS
                EOS: u1 = 0x0,
                ///  OVR
                OVR: u1 = 0x0,
                ///  JEOC
                JEOC: u1 = 0x0,
                ///  JEOS
                JEOS: u1 = 0x0,
                ///  AWD1
                AWD1: u1 = 0x0,
                ///  AWD2
                AWD2: u1 = 0x0,
                ///  AWD3
                AWD3: u1 = 0x0,
                ///  JQOVF
                JQOVF: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  interrupt enable register
            IER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADRDYIE
                ADRDYIE: u1 = 0x0,
                ///  EOSMPIE
                EOSMPIE: u1 = 0x0,
                ///  EOCIE
                EOCIE: u1 = 0x0,
                ///  EOSIE
                EOSIE: u1 = 0x0,
                ///  OVRIE
                OVRIE: u1 = 0x0,
                ///  JEOCIE
                JEOCIE: u1 = 0x0,
                ///  JEOSIE
                JEOSIE: u1 = 0x0,
                ///  AWD1IE
                AWD1IE: u1 = 0x0,
                ///  AWD2IE
                AWD2IE: u1 = 0x0,
                ///  AWD3IE
                AWD3IE: u1 = 0x0,
                ///  JQOVFIE
                JQOVFIE: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x20002000
                ///  ADEN
                ADEN: u1 = 0x0,
                ///  ADDIS
                ADDIS: u1 = 0x0,
                ///  ADSTART
                ADSTART: u1 = 0x0,
                ///  JADSTART
                JADSTART: u1 = 0x0,
                ///  ADSTP
                ADSTP: u1 = 0x0,
                ///  JADSTP
                JADSTP: u1 = 0x0,
                reserved28: u22 = 0x80,
                ///  ADVREGEN
                ADVREGEN: u1 = 0x0,
                ///  DEEPPWD
                DEEPPWD: u1 = 0x1,
                ///  ADCALDIF
                ADCALDIF: u1 = 0x0,
                ///  ADCAL
                ADCAL: u1 = 0x0,
            }),
            ///  configuration register
            CFGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x80000000
                ///  DMAEN
                DMAEN: u1 = 0x0,
                ///  DMACFG
                DMACFG: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  RES
                RES: u2 = 0x0,
                ///  ALIGN_5
                ALIGN_5: u1 = 0x0,
                ///  EXTSEL
                EXTSEL: u4 = 0x0,
                ///  EXTEN
                EXTEN: u2 = 0x0,
                ///  OVRMOD
                OVRMOD: u1 = 0x0,
                ///  CONT
                CONT: u1 = 0x0,
                ///  AUTDLY
                AUTDLY: u1 = 0x0,
                ///  ALIGN
                ALIGN: u1 = 0x0,
                ///  DISCEN
                DISCEN: u1 = 0x0,
                ///  DISCNUM
                DISCNUM: u3 = 0x0,
                ///  JDISCEN
                JDISCEN: u1 = 0x0,
                ///  JQM
                JQM: u1 = 0x0,
                ///  AWD1SGL
                AWD1SGL: u1 = 0x0,
                ///  AWD1EN
                AWD1EN: u1 = 0x0,
                ///  JAWD1EN
                JAWD1EN: u1 = 0x0,
                ///  JAUTO
                JAUTO: u1 = 0x0,
                ///  AWDCH1CH
                AWDCH1CH: u5 = 0x0,
                ///  Injected Queue disable
                JQDIS: u1 = 0x1,
            }),
            ///  configuration register
            CFGR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMAEN
                ROVSE: u1 = 0x0,
                ///  DMACFG
                JOVSE: u1 = 0x0,
                ///  RES
                OVSR: u3 = 0x0,
                ///  ALIGN
                OVSS: u4 = 0x0,
                ///  Triggered Regular Oversampling
                TROVS: u1 = 0x0,
                ///  EXTEN
                ROVSM: u1 = 0x0,
                reserved16: u5 = 0x0,
                ///  GCOMP
                GCOMP: u1 = 0x0,
                reserved25: u8 = 0x0,
                ///  SWTRIG
                SWTRIG: u1 = 0x0,
                ///  BULB
                BULB: u1 = 0x0,
                ///  SMPTRIG
                SMPTRIG: u1 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  sample time register 1
            SMPR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SMP0
                SMP0: u3 = 0x0,
                ///  SMP1
                SMP1: u3 = 0x0,
                ///  SMP2
                SMP2: u3 = 0x0,
                ///  SMP3
                SMP3: u3 = 0x0,
                ///  SMP4
                SMP4: u3 = 0x0,
                ///  SMP5
                SMP5: u3 = 0x0,
                ///  SMP6
                SMP6: u3 = 0x0,
                ///  SMP7
                SMP7: u3 = 0x0,
                ///  SMP8
                SMP8: u3 = 0x0,
                ///  SMP9
                SMP9: u3 = 0x0,
                reserved31: u1 = 0x0,
                ///  Addition of one clock cycle to the sampling time
                SMPPLUS: u1 = 0x0,
            }),
            ///  sample time register 2
            SMPR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SMP10
                SMP10: u3 = 0x0,
                ///  SMP11
                SMP11: u3 = 0x0,
                ///  SMP12
                SMP12: u3 = 0x0,
                ///  SMP13
                SMP13: u3 = 0x0,
                ///  SMP14
                SMP14: u3 = 0x0,
                ///  SMP15
                SMP15: u3 = 0x0,
                ///  SMP16
                SMP16: u3 = 0x0,
                ///  SMP17
                SMP17: u3 = 0x0,
                ///  SMP18
                SMP18: u3 = 0x0,
                padding: u5 = 0x0,
            }),
            reserved32: [4]u8,
            ///  watchdog threshold register 1
            TR1: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFF0000
                ///  LT1
                LT1: u12 = 0x0,
                ///  AWDFILT
                AWDFILT: u3 = 0x0,
                reserved16: u1 = 0x0,
                ///  HT1
                HT1: u12 = 0xFFF,
                padding: u4 = 0x0,
            }),
            ///  watchdog threshold register
            TR2: mmio.Mmio(packed struct(u32) { // reset_value: 0xFF0000
                ///  LT2
                LT2: u8 = 0x0,
                reserved16: u8 = 0x0,
                ///  HT2
                HT2: u8 = 0xFF,
                padding: u8 = 0x0,
            }),
            ///  watchdog threshold register 3
            TR3: mmio.Mmio(packed struct(u32) { // reset_value: 0xFF0000
                ///  LT3
                LT3: u8 = 0x0,
                reserved16: u8 = 0x0,
                ///  HT3
                HT3: u8 = 0xFF,
                padding: u8 = 0x0,
            }),
            reserved48: [4]u8,
            ///  regular sequence register 1
            SQR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Regular channel sequence length
                L: u4 = 0x0,
                reserved6: u2 = 0x0,
                ///  SQ1
                SQ1: u5 = 0x0,
                reserved12: u1 = 0x0,
                ///  SQ2
                SQ2: u5 = 0x0,
                reserved18: u1 = 0x0,
                ///  SQ3
                SQ3: u5 = 0x0,
                reserved24: u1 = 0x0,
                ///  SQ4
                SQ4: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  regular sequence register 2
            SQR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SQ5
                SQ5: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  SQ6
                SQ6: u5 = 0x0,
                reserved12: u1 = 0x0,
                ///  SQ7
                SQ7: u5 = 0x0,
                reserved18: u1 = 0x0,
                ///  SQ8
                SQ8: u5 = 0x0,
                reserved24: u1 = 0x0,
                ///  SQ9
                SQ9: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  regular sequence register 3
            SQR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SQ10
                SQ10: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  SQ11
                SQ11: u5 = 0x0,
                reserved12: u1 = 0x0,
                ///  SQ12
                SQ12: u5 = 0x0,
                reserved18: u1 = 0x0,
                ///  SQ13
                SQ13: u5 = 0x0,
                reserved24: u1 = 0x0,
                ///  SQ14
                SQ14: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  regular sequence register 4
            SQR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SQ15
                SQ15: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  SQ16
                SQ16: u5 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  regular Data Register
            DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Regular Data converted
                RDATA: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved76: [8]u8,
            ///  injected sequence register
            JSQR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JL
                JL: u2 = 0x0,
                ///  JEXTSEL
                JEXTSEL: u5 = 0x0,
                ///  JEXTEN
                JEXTEN: u2 = 0x0,
                ///  JSQ1
                JSQ1: u5 = 0x0,
                reserved15: u1 = 0x0,
                ///  JSQ2
                JSQ2: u5 = 0x0,
                reserved21: u1 = 0x0,
                ///  JSQ3
                JSQ3: u5 = 0x0,
                reserved27: u1 = 0x0,
                ///  JSQ4
                JSQ4: u5 = 0x0,
            }),
            reserved96: [16]u8,
            ///  offset register 1
            OFR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  OFFSET1
                OFFSET1: u12 = 0x0,
                reserved24: u12 = 0x0,
                ///  OFFSETPOS
                OFFSETPOS: u1 = 0x0,
                ///  SATEN
                SATEN: u1 = 0x0,
                ///  OFFSET1_CH
                OFFSET1_CH: u5 = 0x0,
                ///  OFFSET1_EN
                OFFSET1_EN: u1 = 0x0,
            }),
            ///  offset register 2
            OFR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  OFFSET1
                OFFSET1: u12 = 0x0,
                reserved24: u12 = 0x0,
                ///  OFFSETPOS
                OFFSETPOS: u1 = 0x0,
                ///  SATEN
                SATEN: u1 = 0x0,
                ///  OFFSET1_CH
                OFFSET1_CH: u5 = 0x0,
                ///  OFFSET1_EN
                OFFSET1_EN: u1 = 0x0,
            }),
            ///  offset register 3
            OFR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  OFFSET1
                OFFSET1: u12 = 0x0,
                reserved24: u12 = 0x0,
                ///  OFFSETPOS
                OFFSETPOS: u1 = 0x0,
                ///  SATEN
                SATEN: u1 = 0x0,
                ///  OFFSET1_CH
                OFFSET1_CH: u5 = 0x0,
                ///  OFFSET1_EN
                OFFSET1_EN: u1 = 0x0,
            }),
            ///  offset register 4
            OFR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  OFFSET1
                OFFSET1: u12 = 0x0,
                reserved24: u12 = 0x0,
                ///  OFFSETPOS
                OFFSETPOS: u1 = 0x0,
                ///  SATEN
                SATEN: u1 = 0x0,
                ///  OFFSET1_CH
                OFFSET1_CH: u5 = 0x0,
                ///  OFFSET1_EN
                OFFSET1_EN: u1 = 0x0,
            }),
            reserved128: [16]u8,
            ///  injected data register 1
            JDR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JDATA1
                JDATA1: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  injected data register 2
            JDR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JDATA2
                JDATA2: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  injected data register 3
            JDR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JDATA3
                JDATA3: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  injected data register 4
            JDR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JDATA4
                JDATA4: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved160: [16]u8,
            ///  Analog Watchdog 2 Configuration Register
            AWD2CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  AWD2CH
                AWD2CH: u19 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  Analog Watchdog 3 Configuration Register
            AWD3CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  AWD3CH
                AWD3CH: u19 = 0x0,
                padding: u13 = 0x0,
            }),
            reserved176: [8]u8,
            ///  Differential Mode Selection Register 2
            DIFSEL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Differential mode for channels 0
                DIFSEL_0: u1 = 0x0,
                ///  Differential mode for channels 15 to 1
                DIFSEL_1_18: u18 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  Calibration Factors
            CALFACT: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CALFACT_S
                CALFACT_S: u7 = 0x0,
                reserved16: u9 = 0x0,
                ///  CALFACT_D
                CALFACT_D: u7 = 0x0,
                padding: u9 = 0x0,
            }),
            reserved192: [8]u8,
            ///  Gain compensation Register
            GCOMP: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  GCOMPCOEFF
                GCOMPCOEFF: u14 = 0x0,
                padding: u18 = 0x0,
            }),
        };

        ///  FDCAN
        pub const FDCAN = extern struct {
            ///  FDCAN Core Release Register
            CREL: mmio.Mmio(packed struct(u32) { // reset_value: 0x11111111
                ///  DAY
                DAY: u8 = 0x11,
                ///  MON
                MON: u8 = 0x11,
                ///  YEAR
                YEAR: u4 = 0x1,
                ///  SUBSTEP
                SUBSTEP: u4 = 0x1,
                ///  STEP
                STEP: u4 = 0x1,
                ///  REL
                REL: u4 = 0x1,
            }),
            ///  FDCAN Core Release Register
            ENDN: mmio.Mmio(packed struct(u32) { // reset_value: 0x87654321
                ///  ETV
                ETV: u32 = 0x87654321,
            }),
            reserved12: [4]u8,
            ///  This register is only writable if bits CCCR.CCE and CCCR.INIT are set. The CAN bit time may be programed in the range of 4 to 25 time quanta. The CAN time quantum may be programmed in the range of 1 to 1024 FDCAN clock periods. tq = (DBRP + 1) FDCAN clock period. DTSEG1 is the sum of Prop_Seg and Phase_Seg1. DTSEG2 is Phase_Seg2. Therefore the length of the bit time is (programmed values) [DTSEG1 + DTSEG2 + 3] tq or (functional values) [Sync_Seg + Prop_Seg + Phase_Seg1 + Phase_Seg2] tq. The Information Processing Time (IPT) is zero, meaning the data for the next bit is available at the first clock edge after the sample point.
            DBTP: mmio.Mmio(packed struct(u32) { // reset_value: 0xA33
                ///  DSJW
                DSJW: u4 = 0x3,
                ///  DTSEG2
                DTSEG2: u4 = 0x3,
                ///  DTSEG1
                DTSEG1: u5 = 0xA,
                reserved16: u3 = 0x0,
                ///  DBRP
                DBRP: u5 = 0x0,
                reserved23: u2 = 0x0,
                ///  TDC
                TDC: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Write access to the Test Register has to be enabled by setting bit CCCR[TEST] to 1 . All Test Register functions are set to their reset values when bit CCCR[TEST] is reset. Loop Back mode and software control of Tx pin FDCANx_TX are hardware test modes. Programming TX differently from 00 may disturb the message transfer on the CAN bus.
            TEST: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved4: u4 = 0x0,
                ///  LBCK
                LBCK: u1 = 0x0,
                ///  TX
                TX: u2 = 0x0,
                ///  RX
                RX: u1 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  The RAM Watchdog monitors the READY output of the Message RAM. A Message RAM access starts the Message RAM Watchdog Counter with the value configured by the RWD[WDC] bits. The counter is reloaded with RWD[WDC] bits when the Message RAM signals successful completion by activating its READY output. In case there is no response from the Message RAM until the counter has counted down to 0, the counter stops and interrupt flag IR[WDI] bit is set. The RAM Watchdog Counter is clocked by the fdcan_pclk clock.
            RWD: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  WDC
                WDC: u8 = 0x0,
                ///  WDV
                WDV: u8 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  For details about setting and resetting of single bits see Software initialization.
            CCCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x1
                ///  INIT
                INIT: u1 = 0x1,
                ///  CCE
                CCE: u1 = 0x0,
                ///  ASM
                ASM: u1 = 0x0,
                ///  CSA
                CSA: u1 = 0x0,
                ///  CSR
                CSR: u1 = 0x0,
                ///  MON
                MON: u1 = 0x0,
                ///  DAR
                DAR: u1 = 0x0,
                ///  TEST
                TEST: u1 = 0x0,
                ///  FDOE
                FDOE: u1 = 0x0,
                ///  BRSE
                BRSE: u1 = 0x0,
                reserved12: u2 = 0x0,
                ///  PXHD
                PXHD: u1 = 0x0,
                ///  EFBI
                EFBI: u1 = 0x0,
                ///  TXP
                TXP: u1 = 0x0,
                ///  NISO
                NISO: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  FDCAN_NBTP
            NBTP: mmio.Mmio(packed struct(u32) { // reset_value: 0xA33
                ///  TSEG2
                TSEG2: u7 = 0x33,
                reserved8: u1 = 0x0,
                ///  NTSEG1
                NTSEG1: u8 = 0xA,
                ///  NBRP
                NBRP: u9 = 0x0,
                ///  NSJW
                NSJW: u7 = 0x0,
            }),
            ///  FDCAN Timestamp Counter Configuration Register
            TSCC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TSS
                TSS: u2 = 0x0,
                reserved16: u14 = 0x0,
                ///  TCP
                TCP: u4 = 0x0,
                padding: u12 = 0x0,
            }),
            ///  FDCAN Timestamp Counter Value Register
            TSCV: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TSC
                TSC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  FDCAN Timeout Counter Configuration Register
            TOCC: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF0000
                ///  ETOC
                ETOC: u1 = 0x0,
                ///  TOS
                TOS: u2 = 0x0,
                reserved16: u13 = 0x0,
                ///  TOP
                TOP: u16 = 0xFFFF,
            }),
            ///  FDCAN Timeout Counter Value Register
            TOCV: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  TOC
                TOC: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            reserved64: [16]u8,
            ///  FDCAN Error Counter Register
            ECR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TEC
                TEC: u8 = 0x0,
                ///  TREC
                TREC: u7 = 0x0,
                ///  RP
                RP: u1 = 0x0,
                ///  CEL
                CEL: u8 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  FDCAN Protocol Status Register
            PSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x707
                ///  LEC
                LEC: u3 = 0x7,
                ///  ACT
                ACT: u2 = 0x0,
                ///  EP
                EP: u1 = 0x0,
                ///  EW
                EW: u1 = 0x0,
                ///  BO
                BO: u1 = 0x0,
                ///  DLEC
                DLEC: u3 = 0x7,
                ///  RESI
                RESI: u1 = 0x0,
                ///  RBRS
                RBRS: u1 = 0x0,
                ///  REDL
                REDL: u1 = 0x0,
                ///  PXE
                PXE: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  TDCV
                TDCV: u7 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  FDCAN Transmitter Delay Compensation Register
            TDCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TDCF
                TDCF: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  TDCO
                TDCO: u7 = 0x0,
                padding: u17 = 0x0,
            }),
            reserved80: [4]u8,
            ///  The flags are set when one of the listed conditions is detected (edge-sensitive). The flags remain set until the Host clears them. A flag is cleared by writing a 1 to the corresponding bit position. Writing a 0 has no effect. A hard reset will clear the register. The configuration of IE controls whether an interrupt is generated. The configuration of ILS controls on which interrupt line an interrupt is signaled.
            IR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RF0N
                RF0N: u1 = 0x0,
                ///  RF0W
                RF0W: u1 = 0x0,
                ///  RF0F
                RF0F: u1 = 0x0,
                ///  RF0L
                RF0L: u1 = 0x0,
                ///  RF1N
                RF1N: u1 = 0x0,
                ///  RF1W
                RF1W: u1 = 0x0,
                ///  RF1F
                RF1F: u1 = 0x0,
                ///  RF1L
                RF1L: u1 = 0x0,
                ///  HPM
                HPM: u1 = 0x0,
                ///  TC
                TC: u1 = 0x0,
                ///  TCF
                TCF: u1 = 0x0,
                ///  TFE
                TFE: u1 = 0x0,
                ///  TEFN
                TEFN: u1 = 0x0,
                ///  TEFW
                TEFW: u1 = 0x0,
                ///  TEFF
                TEFF: u1 = 0x0,
                ///  TEFL
                TEFL: u1 = 0x0,
                ///  TSW
                TSW: u1 = 0x0,
                ///  MRAF
                MRAF: u1 = 0x0,
                ///  TOO
                TOO: u1 = 0x0,
                ///  DRX
                DRX: u1 = 0x0,
                reserved22: u2 = 0x0,
                ///  ELO
                ELO: u1 = 0x0,
                ///  EP
                EP: u1 = 0x0,
                ///  EW
                EW: u1 = 0x0,
                ///  BO
                BO: u1 = 0x0,
                ///  WDI
                WDI: u1 = 0x0,
                ///  PEA
                PEA: u1 = 0x0,
                ///  PED
                PED: u1 = 0x0,
                ///  ARA
                ARA: u1 = 0x0,
                padding: u2 = 0x0,
            }),
            ///  The settings in the Interrupt Enable register determine which status changes in the Interrupt Register will be signaled on an interrupt line.
            IE: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RF0NE
                RF0NE: u1 = 0x0,
                ///  RF0WE
                RF0WE: u1 = 0x0,
                ///  RF0FE
                RF0FE: u1 = 0x0,
                ///  RF0LE
                RF0LE: u1 = 0x0,
                ///  RF1NE
                RF1NE: u1 = 0x0,
                ///  RF1WE
                RF1WE: u1 = 0x0,
                ///  RF1FE
                RF1FE: u1 = 0x0,
                ///  RF1LE
                RF1LE: u1 = 0x0,
                ///  HPME
                HPME: u1 = 0x0,
                ///  TCE
                TCE: u1 = 0x0,
                ///  TCFE
                TCFE: u1 = 0x0,
                ///  TFEE
                TFEE: u1 = 0x0,
                ///  TEFNE
                TEFNE: u1 = 0x0,
                ///  TEFWE
                TEFWE: u1 = 0x0,
                ///  TEFFE
                TEFFE: u1 = 0x0,
                ///  TEFLE
                TEFLE: u1 = 0x0,
                ///  TSWE
                TSWE: u1 = 0x0,
                ///  MRAFE
                MRAFE: u1 = 0x0,
                ///  TOOE
                TOOE: u1 = 0x0,
                ///  DRX
                DRX: u1 = 0x0,
                ///  BECE
                BECE: u1 = 0x0,
                ///  BEUE
                BEUE: u1 = 0x0,
                ///  ELOE
                ELOE: u1 = 0x0,
                ///  EPE
                EPE: u1 = 0x0,
                ///  EWE
                EWE: u1 = 0x0,
                ///  BOE
                BOE: u1 = 0x0,
                ///  WDIE
                WDIE: u1 = 0x0,
                ///  PEAE
                PEAE: u1 = 0x0,
                ///  PEDE
                PEDE: u1 = 0x0,
                ///  ARAE
                ARAE: u1 = 0x0,
                padding: u2 = 0x0,
            }),
            ///  The Interrupt Line Select register assigns an interrupt generated by a specific interrupt flag from the Interrupt Register to one of the two module interrupt lines. For interrupt generation the respective interrupt line has to be enabled via ILE[EINT0] and ILE[EINT1].
            ILS: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RF0NL
                RF0NL: u1 = 0x0,
                ///  RF0WL
                RF0WL: u1 = 0x0,
                ///  RF0FL
                RF0FL: u1 = 0x0,
                ///  RF0LL
                RF0LL: u1 = 0x0,
                ///  RF1NL
                RF1NL: u1 = 0x0,
                ///  RF1WL
                RF1WL: u1 = 0x0,
                ///  RF1FL
                RF1FL: u1 = 0x0,
                ///  RF1LL
                RF1LL: u1 = 0x0,
                ///  HPML
                HPML: u1 = 0x0,
                ///  TCL
                TCL: u1 = 0x0,
                ///  TCFL
                TCFL: u1 = 0x0,
                ///  TFEL
                TFEL: u1 = 0x0,
                ///  TEFNL
                TEFNL: u1 = 0x0,
                ///  TEFWL
                TEFWL: u1 = 0x0,
                ///  TEFFL
                TEFFL: u1 = 0x0,
                ///  TEFLL
                TEFLL: u1 = 0x0,
                ///  TSWL
                TSWL: u1 = 0x0,
                ///  MRAFL
                MRAFL: u1 = 0x0,
                ///  TOOL
                TOOL: u1 = 0x0,
                ///  DRXL
                DRXL: u1 = 0x0,
                ///  BECL
                BECL: u1 = 0x0,
                ///  BEUL
                BEUL: u1 = 0x0,
                ///  ELOL
                ELOL: u1 = 0x0,
                ///  EPL
                EPL: u1 = 0x0,
                ///  EWL
                EWL: u1 = 0x0,
                ///  BOL
                BOL: u1 = 0x0,
                ///  WDIL
                WDIL: u1 = 0x0,
                ///  PEAL
                PEAL: u1 = 0x0,
                ///  PEDL
                PEDL: u1 = 0x0,
                ///  ARAL
                ARAL: u1 = 0x0,
                padding: u2 = 0x0,
            }),
            ///  Each of the two interrupt lines to the CPU can be enabled/disabled separately by programming bits EINT0 and EINT1.
            ILE: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EINT0
                EINT0: u1 = 0x0,
                ///  EINT1
                EINT1: u1 = 0x0,
                padding: u30 = 0x0,
            }),
            reserved128: [32]u8,
            ///  Global settings for Message ID filtering. The Global Filter Configuration controls the filter path for standard and extended messages as described in Figure706: Standard Message ID filter path and Figure707: Extended Message ID filter path.
            RXGFC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RRFE
                RRFE: u1 = 0x0,
                ///  RRFS
                RRFS: u1 = 0x0,
                ///  ANFE
                ANFE: u2 = 0x0,
                ///  ANFS
                ANFS: u2 = 0x0,
                padding: u26 = 0x0,
            }),
            ///  FDCAN Extended ID and Mask Register
            XIDAM: mmio.Mmio(packed struct(u32) { // reset_value: 0x1FFFFFFF
                ///  EIDM
                EIDM: u29 = 0x1FFFFFFF,
                padding: u3 = 0x0,
            }),
            ///  This register is updated every time a Message ID filter element configured to generate a priority event match. This can be used to monitor the status of incoming high priority messages and to enable fast access to these messages.
            HPMS: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BIDX
                BIDX: u6 = 0x0,
                ///  MSI
                MSI: u2 = 0x0,
                ///  FIDX
                FIDX: u7 = 0x0,
                ///  FLST
                FLST: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved144: [4]u8,
            ///  FDCAN Rx FIFO 0 Status Register
            RXF0S: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  F0FL
                F0FL: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  F0GI
                F0GI: u6 = 0x0,
                reserved16: u2 = 0x0,
                ///  F0PI
                F0PI: u6 = 0x0,
                reserved24: u2 = 0x0,
                ///  F0F
                F0F: u1 = 0x0,
                ///  RF0L
                RF0L: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  CAN Rx FIFO 0 Acknowledge Register
            RXF0A: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  F0AI
                F0AI: u6 = 0x0,
                padding: u26 = 0x0,
            }),
            ///  FDCAN Rx FIFO 1 Status Register
            RXF1S: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  F1FL
                F1FL: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  F1GI
                F1GI: u6 = 0x0,
                reserved16: u2 = 0x0,
                ///  F1PI
                F1PI: u6 = 0x0,
                reserved24: u2 = 0x0,
                ///  F1F
                F1F: u1 = 0x0,
                ///  RF1L
                RF1L: u1 = 0x0,
                reserved30: u4 = 0x0,
                ///  DMS
                DMS: u2 = 0x0,
            }),
            ///  FDCAN Rx FIFO 1 Acknowledge Register
            RXF1A: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  F1AI
                F1AI: u6 = 0x0,
                padding: u26 = 0x0,
            }),
            reserved192: [32]u8,
            ///  FDCAN Tx Buffer Configuration Register
            TXBC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved2: u2 = 0x0,
                ///  TBSA
                TBSA: u14 = 0x0,
                ///  NDTB
                NDTB: u6 = 0x0,
                reserved24: u2 = 0x0,
                ///  TFQS
                TFQS: u6 = 0x0,
                ///  TFQM
                TFQM: u1 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  The Tx FIFO/Queue status is related to the pending Tx requests listed in register TXBRP. Therefore the effect of Add/Cancellation requests may be delayed due to a running Tx scan (TXBRP not yet updated).
            TXFQS: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TFFL
                TFFL: u6 = 0x0,
                reserved8: u2 = 0x0,
                ///  TFGI
                TFGI: u5 = 0x0,
                reserved16: u3 = 0x0,
                ///  TFQPI
                TFQPI: u5 = 0x0,
                ///  TFQF
                TFQF: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  FDCAN Tx Buffer Request Pending Register
            TXBRP: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TRP
                TRP: u32 = 0x0,
            }),
            ///  FDCAN Tx Buffer Add Request Register
            TXBAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  AR
                AR: u32 = 0x0,
            }),
            ///  FDCAN Tx Buffer Cancellation Request Register
            TXBCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CR
                CR: u32 = 0x0,
            }),
            ///  FDCAN Tx Buffer Transmission Occurred Register
            TXBTO: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TO
                TO: u32 = 0x0,
            }),
            ///  FDCAN Tx Buffer Cancellation Finished Register
            TXBCF: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CF
                CF: u32 = 0x0,
            }),
            ///  FDCAN Tx Buffer Transmission Interrupt Enable Register
            TXBTIE: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TIE
                TIE: u32 = 0x0,
            }),
            ///  FDCAN Tx Buffer Cancellation Finished Interrupt Enable Register
            TXBCIE: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CFIE
                CFIE: u32 = 0x0,
            }),
            ///  FDCAN Tx Event FIFO Status Register
            TXEFS: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EFFL
                EFFL: u6 = 0x0,
                reserved8: u2 = 0x0,
                ///  EFGI
                EFGI: u5 = 0x0,
                reserved16: u3 = 0x0,
                ///  EFPI
                EFPI: u5 = 0x0,
                reserved24: u3 = 0x0,
                ///  EFF
                EFF: u1 = 0x0,
                ///  TEFL
                TEFL: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  FDCAN Tx Event FIFO Acknowledge Register
            TXEFA: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EFAI
                EFAI: u5 = 0x0,
                padding: u27 = 0x0,
            }),
            reserved256: [20]u8,
            ///  FDCAN CFG clock divider register
            CKDIV: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  input clock divider. the APB clock could be divided prior to be used by the CAN sub
                PDIV: u4 = 0x0,
                padding: u28 = 0x0,
            }),
        };

        ///  General purpose timers
        pub const TIM15 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Counter enable
                CEN: u1 = 0x0,
                ///  Update disable
                UDIS: u1 = 0x0,
                ///  Update request source
                URS: u1 = 0x0,
                ///  One-pulse mode
                OPM: u1 = 0x0,
                reserved7: u3 = 0x0,
                ///  Auto-reload preload enable
                ARPE: u1 = 0x0,
                ///  Clock division
                CKD: u2 = 0x0,
                reserved11: u1 = 0x0,
                ///  UIF status bit remapping
                UIFREMAP: u1 = 0x0,
                ///  Dithering Enable
                DITHEN: u1 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/compare preloaded control
                CCPC: u1 = 0x0,
                reserved2: u1 = 0x0,
                ///  Capture/compare control update selection
                CCUS: u1 = 0x0,
                ///  Capture/compare DMA selection
                CCDS: u1 = 0x0,
                ///  Master mode selection
                MMS: u3 = 0x0,
                ///  TI1 selection
                TI1S: u1 = 0x0,
                ///  Output Idle state 1
                OIS1: u1 = 0x0,
                ///  Output Idle state 1
                OIS1N: u1 = 0x0,
                ///  Output idle state 2 (OC2 output)
                OIS2: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  slave mode control register
            SMCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Slave mode selection
                SMS: u3 = 0x0,
                reserved4: u1 = 0x0,
                ///  Trigger selection
                TS: u3 = 0x0,
                ///  Master/Slave mode
                MSM: u1 = 0x0,
                reserved16: u8 = 0x0,
                ///  Slave mode selection - bit 3
                SMS_3: u1 = 0x0,
                reserved20: u3 = 0x0,
                ///  Trigger selection - bit 4:3
                TS_4_3: u2 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt enable
                UIE: u1 = 0x0,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1 = 0x0,
                ///  Capture/Compare 2 interrupt enable
                CC2IE: u1 = 0x0,
                reserved5: u2 = 0x0,
                ///  COM interrupt enable
                COMIE: u1 = 0x0,
                ///  Trigger interrupt enable
                TIE: u1 = 0x0,
                ///  Break interrupt enable
                BIE: u1 = 0x0,
                ///  Update DMA request enable
                UDE: u1 = 0x0,
                ///  Capture/Compare 1 DMA request enable
                CC1DE: u1 = 0x0,
                ///  Capture/Compare 2 DMA request enable
                CC2DE: u1 = 0x0,
                reserved13: u2 = 0x0,
                ///  COM DMA request enable
                COMDE: u1 = 0x0,
                ///  Trigger DMA request enable
                TDE: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt flag
                UIF: u1 = 0x0,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1 = 0x0,
                ///  Capture/compare 2 interrupt flag
                CC2IF: u1 = 0x0,
                reserved5: u2 = 0x0,
                ///  COM interrupt flag
                COMIF: u1 = 0x0,
                ///  Trigger interrupt flag
                TIF: u1 = 0x0,
                ///  Break interrupt flag
                BIF: u1 = 0x0,
                reserved9: u1 = 0x0,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1 = 0x0,
                ///  Capture/Compare 2 overcapture flag
                CC2OF: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update generation
                UG: u1 = 0x0,
                ///  Capture/compare 1 generation
                CC1G: u1 = 0x0,
                ///  Capture/compare 2 generation
                CC2G: u1 = 0x0,
                reserved5: u2 = 0x0,
                ///  Capture/Compare control update generation
                COMG: u1 = 0x0,
                ///  Trigger generation
                TG: u1 = 0x0,
                ///  Break generation
                BG: u1 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  capture/compare mode register (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 selection
                CC1S: u2 = 0x0,
                ///  Output Compare 1 fast enable
                OC1FE: u1 = 0x0,
                ///  Output Compare 1 preload enable
                OC1PE: u1 = 0x0,
                ///  Output Compare 1 mode
                OC1M: u3 = 0x0,
                ///  OC1CE
                OC1CE: u1 = 0x0,
                ///  CC2S
                CC2S: u2 = 0x0,
                ///  OC2FE
                OC2FE: u1 = 0x0,
                ///  OC2PE
                OC2PE: u1 = 0x0,
                ///  OC2M
                OC2M: u3 = 0x0,
                reserved16: u1 = 0x0,
                ///  Output Compare 1 mode
                OC1M_3: u1 = 0x0,
                reserved24: u7 = 0x0,
                ///  Output Compare 2 mode - bit 3
                OC2M_3: u1 = 0x0,
                padding: u7 = 0x0,
            }),
            reserved32: [4]u8,
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 output enable
                CC1E: u1 = 0x0,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1 = 0x0,
                ///  Capture/Compare 1 complementary output enable
                CC1NE: u1 = 0x0,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1 = 0x0,
                ///  Capture/Compare 2 output enable
                CC2E: u1 = 0x0,
                ///  Capture/Compare 2 output polarity
                CC2P: u1 = 0x0,
                reserved7: u1 = 0x0,
                ///  Capture/Compare 2 complementary output polarity
                CC2NP: u1 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  counter value
                CNT: u16 = 0x0,
                reserved31: u15 = 0x0,
                ///  UIF Copy
                UIFCPY: u1 = 0x0,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Prescaler value
                PSC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Auto-reload value
                ARR: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  repetition counter register
            RCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Repetition counter value
                REP: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 value
                CCR1: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare register 2
            CCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 value
                CCR2: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved68: [8]u8,
            ///  break and dead-time register
            BDTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dead-time generator setup
                DTG: u8 = 0x0,
                ///  Lock configuration
                LOCK: u2 = 0x0,
                ///  Off-state selection for Idle mode
                OSSI: u1 = 0x0,
                ///  Off-state selection for Run mode
                OSSR: u1 = 0x0,
                ///  Break enable
                BKE: u1 = 0x0,
                ///  Break polarity
                BKP: u1 = 0x0,
                ///  Automatic output enable
                AOE: u1 = 0x0,
                ///  Main output enable
                MOE: u1 = 0x0,
                ///  Break filter
                BKF: u4 = 0x0,
                reserved26: u6 = 0x0,
                ///  BKDSRM
                BKDSRM: u1 = 0x0,
                reserved28: u1 = 0x0,
                ///  BKBID
                BKBID: u1 = 0x0,
                padding: u3 = 0x0,
            }),
            reserved84: [12]u8,
            ///  timer Deadtime Register 2
            DTR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dead-time generator setup
                DTGF: u8 = 0x0,
                reserved16: u8 = 0x0,
                ///  Deadtime Asymmetric Enable
                DTAE: u1 = 0x0,
                ///  Deadtime Preload Enable
                DTPE: u1 = 0x0,
                padding: u14 = 0x0,
            }),
            reserved92: [4]u8,
            ///  TIM timer input selection register
            TISEL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TI1[0] to TI1[15] input selection
                TI1SEL: u4 = 0x0,
                reserved8: u4 = 0x0,
                ///  TI2[0] to TI2[15] input selection
                TI2SEL: u4 = 0x0,
                padding: u20 = 0x0,
            }),
            ///  TIM alternate function option register 1
            AF1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BRK BKIN input enable
                BKINE: u1 = 0x0,
                ///  BRK COMP1 enable
                BKCMP1E: u1 = 0x0,
                ///  BRK COMP2 enable
                BKCMP2E: u1 = 0x0,
                ///  BRK COMP3 enable
                BKCMP3E: u1 = 0x0,
                ///  BRK COMP4 enable
                BKCMP4E: u1 = 0x0,
                ///  BRK COMP5 enable
                BKCMP5E: u1 = 0x0,
                ///  BRK COMP6 enable
                BKCMP6E: u1 = 0x0,
                ///  BRK COMP7 enable
                BKCMP7E: u1 = 0x0,
                reserved9: u1 = 0x0,
                ///  BRK BKIN input polarity
                BKINP: u1 = 0x0,
                ///  BRK COMP1 input polarity
                BKCMP1P: u1 = 0x0,
                ///  BRK COMP2 input polarity
                BKCMP2P: u1 = 0x0,
                ///  BRK COMP3 input polarity
                BKCMP3P: u1 = 0x0,
                ///  BRK COMP4 input polarity
                BKCMP4P: u1 = 0x0,
                padding: u18 = 0x0,
            }),
            ///  TIM alternate function option register 2
            AF2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved16: u16 = 0x0,
                ///  OCREF_CLR source selection
                OCRSEL: u3 = 0x0,
                padding: u13 = 0x0,
            }),
            reserved988: [884]u8,
            ///  DMA control register
            DCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA base address
                DBA: u5 = 0x0,
                reserved8: u3 = 0x0,
                ///  DMA burst length
                DBL: u5 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  DMA address for full transfer
            DMAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA register for burst accesses
                DMAB: u32 = 0x0,
            }),
        };

        ///  General purpose timers
        pub const TIM16 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Counter enable
                CEN: u1 = 0x0,
                ///  Update disable
                UDIS: u1 = 0x0,
                ///  Update request source
                URS: u1 = 0x0,
                ///  One-pulse mode
                OPM: u1 = 0x0,
                reserved7: u3 = 0x0,
                ///  Auto-reload preload enable
                ARPE: u1 = 0x0,
                ///  Clock division
                CKD: u2 = 0x0,
                reserved11: u1 = 0x0,
                ///  UIF status bit remapping
                UIFREMAP: u1 = 0x0,
                ///  Dithering Enable
                DITHEN: u1 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/compare preloaded control
                CCPC: u1 = 0x0,
                reserved2: u1 = 0x0,
                ///  Capture/compare control update selection
                CCUS: u1 = 0x0,
                ///  Capture/compare DMA selection
                CCDS: u1 = 0x0,
                reserved8: u4 = 0x0,
                ///  Output Idle state 1
                OIS1: u1 = 0x0,
                ///  Output Idle state 1
                OIS1N: u1 = 0x0,
                padding: u22 = 0x0,
            }),
            reserved12: [4]u8,
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt enable
                UIE: u1 = 0x0,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1 = 0x0,
                reserved5: u3 = 0x0,
                ///  COM interrupt enable
                COMIE: u1 = 0x0,
                reserved7: u1 = 0x0,
                ///  Break interrupt enable
                BIE: u1 = 0x0,
                ///  Update DMA request enable
                UDE: u1 = 0x0,
                ///  Capture/Compare 1 DMA request enable
                CC1DE: u1 = 0x0,
                reserved13: u3 = 0x0,
                ///  COM DMA request enable
                COMDE: u1 = 0x0,
                padding: u18 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt flag
                UIF: u1 = 0x0,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1 = 0x0,
                reserved5: u3 = 0x0,
                ///  COM interrupt flag
                COMIF: u1 = 0x0,
                reserved7: u1 = 0x0,
                ///  Break interrupt flag
                BIF: u1 = 0x0,
                reserved9: u1 = 0x0,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1 = 0x0,
                padding: u22 = 0x0,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update generation
                UG: u1 = 0x0,
                ///  Capture/compare 1 generation
                CC1G: u1 = 0x0,
                reserved5: u3 = 0x0,
                ///  Capture/Compare control update generation
                COMG: u1 = 0x0,
                reserved7: u1 = 0x0,
                ///  Break generation
                BG: u1 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  capture/compare mode register (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 selection
                CC1S: u2 = 0x0,
                ///  Output Compare 1 fast enable
                OC1FE: u1 = 0x0,
                ///  Output Compare 1 preload enable
                OC1PE: u1 = 0x0,
                ///  Output Compare 1 mode
                OC1M: u3 = 0x0,
                reserved16: u9 = 0x0,
                ///  Output Compare 1 mode
                OC1M_3: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            reserved32: [4]u8,
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 output enable
                CC1E: u1 = 0x0,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1 = 0x0,
                ///  Capture/Compare 1 complementary output enable
                CC1NE: u1 = 0x0,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1 = 0x0,
                padding: u28 = 0x0,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  counter value
                CNT: u16 = 0x0,
                reserved31: u15 = 0x0,
                ///  UIF Copy
                UIFCPY: u1 = 0x0,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Prescaler value
                PSC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Auto-reload value
                ARR: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  repetition counter register
            RCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Repetition counter value
                REP: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 value
                CCR1: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved68: [12]u8,
            ///  break and dead-time register
            BDTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dead-time generator setup
                DTG: u8 = 0x0,
                ///  Lock configuration
                LOCK: u2 = 0x0,
                ///  Off-state selection for Idle mode
                OSSI: u1 = 0x0,
                ///  Off-state selection for Run mode
                OSSR: u1 = 0x0,
                ///  Break enable
                BKE: u1 = 0x0,
                ///  Break polarity
                BKP: u1 = 0x0,
                ///  Automatic output enable
                AOE: u1 = 0x0,
                ///  Main output enable
                MOE: u1 = 0x0,
                ///  Break filter
                BKF: u4 = 0x0,
                reserved26: u6 = 0x0,
                ///  BKDSRM
                BKDSRM: u1 = 0x0,
                reserved28: u1 = 0x0,
                ///  BKBID
                BKBID: u1 = 0x0,
                padding: u3 = 0x0,
            }),
            reserved84: [12]u8,
            ///  timer Deadtime Register 2
            DTR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dead-time generator setup
                DTGF: u8 = 0x0,
                reserved16: u8 = 0x0,
                ///  Deadtime Asymmetric Enable
                DTAE: u1 = 0x0,
                ///  Deadtime Preload Enable
                DTPE: u1 = 0x0,
                padding: u14 = 0x0,
            }),
            reserved92: [4]u8,
            ///  TIM timer input selection register
            TISEL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TI1[0] to TI1[15] input selection
                TI1SEL: u4 = 0x0,
                padding: u28 = 0x0,
            }),
            ///  TIM alternate function option register 1
            AF1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BRK BKIN input enable
                BKINE: u1 = 0x0,
                ///  BRK COMP1 enable
                BKCMP1E: u1 = 0x0,
                ///  BRK COMP2 enable
                BKCMP2E: u1 = 0x0,
                ///  BRK COMP3 enable
                BKCMP3E: u1 = 0x0,
                ///  BRK COMP4 enable
                BKCMP4E: u1 = 0x0,
                ///  BRK COMP5 enable
                BKCMP5E: u1 = 0x0,
                ///  BRK COMP6 enable
                BKCMP6E: u1 = 0x0,
                ///  BRK COMP7 enable
                BKCMP7E: u1 = 0x0,
                reserved9: u1 = 0x0,
                ///  BRK BKIN input polarity
                BKINP: u1 = 0x0,
                ///  BRK COMP1 input polarity
                BKCMP1P: u1 = 0x0,
                ///  BRK COMP2 input polarity
                BKCMP2P: u1 = 0x0,
                ///  BRK COMP3 input polarity
                BKCMP3P: u1 = 0x0,
                ///  BRK COMP4 input polarity
                BKCMP4P: u1 = 0x0,
                padding: u18 = 0x0,
            }),
            ///  TIM alternate function option register 2
            AF2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved16: u16 = 0x0,
                ///  OCREF_CLR source selection
                OCRSEL: u3 = 0x0,
                padding: u13 = 0x0,
            }),
            reserved988: [884]u8,
            ///  DMA control register
            DCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA base address
                DBA: u5 = 0x0,
                reserved8: u3 = 0x0,
                ///  DMA burst length
                DBL: u5 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  DMA address for full transfer
            DMAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA register for burst accesses
                DMAB: u32 = 0x0,
            }),
        };

        ///  System control block ACTLR
        pub const SCB_ACTRL = extern struct {
            ///  Auxiliary control register
            ACTRL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DISMCYCINT
                DISMCYCINT: u1 = 0x0,
                ///  DISDEFWBUF
                DISDEFWBUF: u1 = 0x0,
                ///  DISFOLD
                DISFOLD: u1 = 0x0,
                reserved8: u5 = 0x0,
                ///  DISFPCA
                DISFPCA: u1 = 0x0,
                ///  DISOOFP
                DISOOFP: u1 = 0x0,
                padding: u22 = 0x0,
            }),
        };

        ///  Advanced-timers
        pub const TIM1 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Counter enable
                CEN: u1 = 0x0,
                ///  Update disable
                UDIS: u1 = 0x0,
                ///  Update request source
                URS: u1 = 0x0,
                ///  One-pulse mode
                OPM: u1 = 0x0,
                ///  Direction
                DIR: u1 = 0x0,
                ///  Center-aligned mode selection
                CMS: u2 = 0x0,
                ///  Auto-reload preload enable
                ARPE: u1 = 0x0,
                ///  Clock division
                CKD: u2 = 0x0,
                reserved11: u1 = 0x0,
                ///  UIF status bit remapping
                UIFREMAP: u1 = 0x0,
                ///  Dithering Enable
                DITHEN: u1 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/compare preloaded control
                CCPC: u1 = 0x0,
                reserved2: u1 = 0x0,
                ///  Capture/compare control update selection
                CCUS: u1 = 0x0,
                ///  Capture/compare DMA selection
                CCDS: u1 = 0x0,
                ///  Master mode selection
                MMS: u3 = 0x0,
                ///  TI1 selection
                TI1S: u1 = 0x0,
                ///  Output Idle state 1
                OIS1: u1 = 0x0,
                ///  Output Idle state 1
                OIS1N: u1 = 0x0,
                ///  Output Idle state 2
                OIS2: u1 = 0x0,
                ///  Output Idle state 2
                OIS2N: u1 = 0x0,
                ///  Output Idle state 3
                OIS3: u1 = 0x0,
                ///  Output Idle state 3
                OIS3N: u1 = 0x0,
                ///  Output Idle state 4
                OIS4: u1 = 0x0,
                ///  Output Idle state 4 (OC4N output)
                OIS4N: u1 = 0x0,
                ///  Output Idle state 5 (OC5 output)
                OIS5: u1 = 0x0,
                reserved18: u1 = 0x0,
                ///  Output Idle state 6 (OC6 output)
                OIS6: u1 = 0x0,
                reserved20: u1 = 0x0,
                ///  Master mode selection 2
                MMS2: u4 = 0x0,
                reserved25: u1 = 0x0,
                ///  Master mode selection - bit 3
                MMS_3: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  slave mode control register
            SMCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Slave mode selection
                SMS: u3 = 0x0,
                ///  OCREF clear selection
                OCCS: u1 = 0x0,
                ///  Trigger selection
                TS: u3 = 0x0,
                ///  Master/Slave mode
                MSM: u1 = 0x0,
                ///  External trigger filter
                ETF: u4 = 0x0,
                ///  External trigger prescaler
                ETPS: u2 = 0x0,
                ///  External clock enable
                ECE: u1 = 0x0,
                ///  External trigger polarity
                ETP: u1 = 0x0,
                ///  Slave mode selection - bit 3
                SMS_3: u1 = 0x0,
                reserved20: u3 = 0x0,
                ///  Trigger selection - bit 4:3
                TS_4_3: u2 = 0x0,
                reserved24: u2 = 0x0,
                ///  SMS Preload Enable
                SMSPE: u1 = 0x0,
                ///  SMS Preload Source
                SMSPS: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt enable
                UIE: u1 = 0x0,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1 = 0x0,
                ///  Capture/Compare 2 interrupt enable
                CC2IE: u1 = 0x0,
                ///  Capture/Compare 3 interrupt enable
                CC3IE: u1 = 0x0,
                ///  Capture/Compare 4 interrupt enable
                CC4IE: u1 = 0x0,
                ///  COM interrupt enable
                COMIE: u1 = 0x0,
                ///  Trigger interrupt enable
                TIE: u1 = 0x0,
                ///  Break interrupt enable
                BIE: u1 = 0x0,
                ///  Update DMA request enable
                UDE: u1 = 0x0,
                ///  Capture/Compare 1 DMA request enable
                CC1DE: u1 = 0x0,
                ///  Capture/Compare 2 DMA request enable
                CC2DE: u1 = 0x0,
                ///  Capture/Compare 3 DMA request enable
                CC3DE: u1 = 0x0,
                ///  Capture/Compare 4 DMA request enable
                CC4DE: u1 = 0x0,
                ///  COM DMA request enable
                COMDE: u1 = 0x0,
                ///  Trigger DMA request enable
                TDE: u1 = 0x0,
                reserved20: u5 = 0x0,
                ///  Index interrupt enable
                IDXIE: u1 = 0x0,
                ///  Direction Change interrupt enable
                DIRIE: u1 = 0x0,
                ///  Index Error interrupt enable
                IERRIE: u1 = 0x0,
                ///  Transition Error interrupt enable
                TERRIE: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt flag
                UIF: u1 = 0x0,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1 = 0x0,
                ///  Capture/Compare 2 interrupt flag
                CC2IF: u1 = 0x0,
                ///  Capture/Compare 3 interrupt flag
                CC3IF: u1 = 0x0,
                ///  Capture/Compare 4 interrupt flag
                CC4IF: u1 = 0x0,
                ///  COM interrupt flag
                COMIF: u1 = 0x0,
                ///  Trigger interrupt flag
                TIF: u1 = 0x0,
                ///  Break interrupt flag
                BIF: u1 = 0x0,
                ///  Break 2 interrupt flag
                B2IF: u1 = 0x0,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1 = 0x0,
                ///  Capture/compare 2 overcapture flag
                CC2OF: u1 = 0x0,
                ///  Capture/Compare 3 overcapture flag
                CC3OF: u1 = 0x0,
                ///  Capture/Compare 4 overcapture flag
                CC4OF: u1 = 0x0,
                ///  System Break interrupt flag
                SBIF: u1 = 0x0,
                reserved16: u2 = 0x0,
                ///  Compare 5 interrupt flag
                CC5IF: u1 = 0x0,
                ///  Compare 6 interrupt flag
                CC6IF: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Index interrupt flag
                IDXF: u1 = 0x0,
                ///  Direction Change interrupt flag
                DIRF: u1 = 0x0,
                ///  Index Error interrupt flag
                IERRF: u1 = 0x0,
                ///  Transition Error interrupt flag
                TERRF: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update generation
                UG: u1 = 0x0,
                ///  Capture/compare 1 generation
                CC1G: u1 = 0x0,
                ///  Capture/compare 2 generation
                CC2G: u1 = 0x0,
                ///  Capture/compare 3 generation
                CC3G: u1 = 0x0,
                ///  Capture/compare 4 generation
                CC4G: u1 = 0x0,
                ///  Capture/Compare control update generation
                COMG: u1 = 0x0,
                ///  Trigger generation
                TG: u1 = 0x0,
                ///  Break generation
                BG: u1 = 0x0,
                ///  Break 2 generation
                B2G: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  capture/compare mode register 1 (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 selection
                CC1S: u2 = 0x0,
                ///  Output Compare 1 fast enable
                OC1FE: u1 = 0x0,
                ///  Output Compare 1 preload enable
                OC1PE: u1 = 0x0,
                ///  Output Compare 1 mode
                OC1M: u3 = 0x0,
                ///  Output Compare 1 clear enable
                OC1CE: u1 = 0x0,
                ///  Capture/Compare 2 selection
                CC2S: u2 = 0x0,
                ///  Output Compare 2 fast enable
                OC2FE: u1 = 0x0,
                ///  Output Compare 2 preload enable
                OC2PE: u1 = 0x0,
                ///  Output Compare 2 mode
                OC2M: u3 = 0x0,
                ///  Output Compare 2 clear enable
                OC2CE: u1 = 0x0,
                ///  Output Compare 1 mode - bit 3
                OC1M_3: u1 = 0x0,
                reserved24: u7 = 0x0,
                ///  Output Compare 2 mode - bit 3
                OC2M_3: u1 = 0x0,
                padding: u7 = 0x0,
            }),
            ///  capture/compare mode register 2 (output mode)
            CCMR2_Output: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 3 selection
                CC3S: u2 = 0x0,
                ///  Output compare 3 fast enable
                OC3FE: u1 = 0x0,
                ///  Output compare 3 preload enable
                OC3PE: u1 = 0x0,
                ///  Output compare 3 mode
                OC3M: u3 = 0x0,
                ///  Output compare 3 clear enable
                OC3CE: u1 = 0x0,
                ///  Capture/Compare 4 selection
                CC4S: u2 = 0x0,
                ///  Output compare 4 fast enable
                OC4FE: u1 = 0x0,
                ///  Output compare 4 preload enable
                OC4PE: u1 = 0x0,
                ///  Output compare 4 mode
                OC4M: u3 = 0x0,
                ///  Output compare 4 clear enable
                OC4CE: u1 = 0x0,
                ///  Output Compare 3 mode - bit 3
                OC3M_3: u1 = 0x0,
                reserved24: u7 = 0x0,
                ///  Output Compare 4 mode - bit 3
                OC4M_3: u1 = 0x0,
                padding: u7 = 0x0,
            }),
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 output enable
                CC1E: u1 = 0x0,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1 = 0x0,
                ///  Capture/Compare 1 complementary output enable
                CC1NE: u1 = 0x0,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1 = 0x0,
                ///  Capture/Compare 2 output enable
                CC2E: u1 = 0x0,
                ///  Capture/Compare 2 output Polarity
                CC2P: u1 = 0x0,
                ///  Capture/Compare 2 complementary output enable
                CC2NE: u1 = 0x0,
                ///  Capture/Compare 2 output Polarity
                CC2NP: u1 = 0x0,
                ///  Capture/Compare 3 output enable
                CC3E: u1 = 0x0,
                ///  Capture/Compare 3 output Polarity
                CC3P: u1 = 0x0,
                ///  Capture/Compare 3 complementary output enable
                CC3NE: u1 = 0x0,
                ///  Capture/Compare 3 output Polarity
                CC3NP: u1 = 0x0,
                ///  Capture/Compare 4 output enable
                CC4E: u1 = 0x0,
                ///  Capture/Compare 3 output Polarity
                CC4P: u1 = 0x0,
                ///  Capture/Compare 4 complementary output enable
                CC4NE: u1 = 0x0,
                ///  Capture/Compare 4 complementary output polarity
                CC4NP: u1 = 0x0,
                ///  Capture/Compare 5 output enable
                CC5E: u1 = 0x0,
                ///  Capture/Compare 5 output polarity
                CC5P: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Capture/Compare 6 output enable
                CC6E: u1 = 0x0,
                ///  Capture/Compare 6 output polarity
                CC6P: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  counter value
                CNT: u16 = 0x0,
                reserved31: u15 = 0x0,
                ///  UIFCPY
                UIFCPY: u1 = 0x0,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Prescaler value
                PSC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Auto-reload value
                ARR: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  repetition counter register
            RCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Repetition counter value
                REP: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 value
                CCR1: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare register 2
            CCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 2 value
                CCR2: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare register 3
            CCR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare value
                CCR3: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare register 4
            CCR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare value
                CCR4: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  break and dead-time register
            BDTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dead-time generator setup
                DTG: u8 = 0x0,
                ///  Lock configuration
                LOCK: u2 = 0x0,
                ///  Off-state selection for Idle mode
                OSSI: u1 = 0x0,
                ///  Off-state selection for Run mode
                OSSR: u1 = 0x0,
                ///  Break enable
                BKE: u1 = 0x0,
                ///  Break polarity
                BKP: u1 = 0x0,
                ///  Automatic output enable
                AOE: u1 = 0x0,
                ///  Main output enable
                MOE: u1 = 0x0,
                ///  Break filter
                BKF: u4 = 0x0,
                ///  Break 2 filter
                BK2F: u4 = 0x0,
                ///  Break 2 Enable
                BK2E: u1 = 0x0,
                ///  Break 2 polarity
                BK2P: u1 = 0x0,
                ///  BKDSRM
                BKDSRM: u1 = 0x0,
                ///  BK2DSRM
                BK2DSRM: u1 = 0x0,
                ///  BKBID
                BKBID: u1 = 0x0,
                ///  BK2ID
                BK2ID: u1 = 0x0,
                padding: u2 = 0x0,
            }),
            ///  capture/compare register 4
            CCR5: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare value
                CCR5: u16 = 0x0,
                reserved29: u13 = 0x0,
                ///  Group Channel 5 and Channel 1
                GC5C1: u1 = 0x0,
                ///  Group Channel 5 and Channel 2
                GC5C2: u1 = 0x0,
                ///  Group Channel 5 and Channel 3
                GC5C3: u1 = 0x0,
            }),
            ///  capture/compare register 4
            CCR6: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare value
                CCR6: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare mode register 2 (output mode)
            CCMR3_Output: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved2: u2 = 0x0,
                ///  Output compare 5 fast enable
                OC5FE: u1 = 0x0,
                ///  Output compare 5 preload enable
                OC5PE: u1 = 0x0,
                ///  Output compare 5 mode
                OC5M: u3 = 0x0,
                ///  Output compare 5 clear enable
                OC5CE: u1 = 0x0,
                reserved10: u2 = 0x0,
                ///  Output compare 6 fast enable
                OC6FE: u1 = 0x0,
                ///  Output compare 6 preload enable
                OC6PE: u1 = 0x0,
                ///  Output compare 6 mode
                OC6M: u3 = 0x0,
                ///  Output compare 6 clear enable
                OC6CE: u1 = 0x0,
                ///  Output Compare 5 mode bit 3
                OC5M_bit3: u3 = 0x0,
                reserved24: u5 = 0x0,
                ///  Output Compare 6 mode bit 3
                OC6M_bit3: u1 = 0x0,
                padding: u7 = 0x0,
            }),
            ///  timer Deadtime Register 2
            DTR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dead-time falling edge generator setup
                DTGF: u8 = 0x0,
                reserved16: u8 = 0x0,
                ///  Deadtime Asymmetric Enable
                DTAE: u1 = 0x0,
                ///  Deadtime Preload Enable
                DTPE: u1 = 0x0,
                padding: u14 = 0x0,
            }),
            ///  DMA control register
            ECR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Index Enable
                IE: u1 = 0x0,
                ///  Index Direction
                IDIR: u2 = 0x0,
                ///  Index Blanking
                IBLK: u2 = 0x0,
                ///  First Index
                FIDX: u1 = 0x0,
                ///  Index Positioning
                IPOS: u2 = 0x0,
                reserved16: u8 = 0x0,
                ///  Pulse width
                PW: u8 = 0x0,
                ///  Pulse Width prescaler
                PWPRSC: u3 = 0x0,
                padding: u5 = 0x0,
            }),
            ///  TIM timer input selection register
            TISEL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TI1[0] to TI1[15] input selection
                TI1SEL: u4 = 0x0,
                reserved8: u4 = 0x0,
                ///  TI2[0] to TI2[15] input selection
                TI2SEL: u4 = 0x0,
                reserved16: u4 = 0x0,
                ///  TI3[0] to TI3[15] input selection
                TI3SEL: u4 = 0x0,
                reserved24: u4 = 0x0,
                ///  TI4[0] to TI4[15] input selection
                TI4SEL: u4 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  TIM alternate function option register 1
            AF1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BRK BKIN input enable
                BKINE: u1 = 0x0,
                ///  BRK COMP1 enable
                BKCMP1E: u1 = 0x0,
                ///  BRK COMP2 enable
                BKCMP2E: u1 = 0x0,
                ///  BRK COMP3 enable
                BKCMP3E: u1 = 0x0,
                ///  BRK COMP4 enable
                BKCMP4E: u1 = 0x0,
                ///  BRK COMP5 enable
                BKCMP5E: u1 = 0x0,
                ///  BRK COMP6 enable
                BKCMP6E: u1 = 0x0,
                ///  BRK COMP7 enable
                BKCMP7E: u1 = 0x0,
                reserved9: u1 = 0x0,
                ///  BRK BKIN input polarity
                BKINP: u1 = 0x0,
                ///  BRK COMP1 input polarity
                BKCMP1P: u1 = 0x0,
                ///  BRK COMP2 input polarity
                BKCMP2P: u1 = 0x0,
                ///  BRK COMP3 input polarity
                BKCMP3P: u1 = 0x0,
                ///  BRK COMP4 input polarity
                BKCMP4P: u1 = 0x0,
                ///  ETR source selection
                ETRSEL: u4 = 0x0,
                padding: u14 = 0x0,
            }),
            ///  TIM alternate function option register 2
            AF2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BRK BKIN input enable
                BKINE: u1 = 0x0,
                ///  BRK2 COMP1 enable
                BK2CMP1E: u1 = 0x0,
                ///  BRK2 COMP2 enable
                BK2CMP2E: u1 = 0x0,
                ///  BRK2 COMP3 enable
                BK2CMP3E: u1 = 0x0,
                ///  BRK2 COMP4 enable
                BK2CMP4E: u1 = 0x0,
                ///  BRK2 COMP5 enable
                BK2CMP5E: u1 = 0x0,
                ///  BRK2 COMP6 enable
                BK2CMP6E: u1 = 0x0,
                ///  BRK2 COMP7 enable
                BK2CMP7E: u1 = 0x0,
                reserved9: u1 = 0x0,
                ///  BRK2 BKIN input polarity
                BK2INP: u1 = 0x0,
                ///  BRK2 COMP1 input polarity
                BK2CMP1P: u1 = 0x0,
                ///  BRK2 COMP2 input polarity
                BK2CMP2P: u1 = 0x0,
                ///  BRK2 COMP3 input polarity
                BK2CMP3P: u1 = 0x0,
                ///  BRK2 COMP4 input polarity
                BK2CMP4P: u1 = 0x0,
                reserved16: u2 = 0x0,
                ///  OCREF_CLR source selection
                OCRSEL: u3 = 0x0,
                padding: u13 = 0x0,
            }),
            reserved988: [884]u8,
            ///  control register
            DCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA base address
                DBA: u5 = 0x0,
                reserved8: u3 = 0x0,
                ///  DMA burst length
                DBL: u5 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  DMA address for full transfer
            DMAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA register for burst accesses
                DMAB: u32 = 0x0,
            }),
        };

        ///  Floating point unit CPACR
        pub const FPU_CPACR = extern struct {
            ///  Coprocessor access control register
            CPACR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved20: u20 = 0x0,
                ///  CP
                CP: u4 = 0x0,
                padding: u8 = 0x0,
            }),
        };

        ///  Nested Vectored Interrupt Controller
        pub const NVIC = extern struct {
            ///  Interrupt Set-Enable Register
            ISER0: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SETENA
                SETENA: u32 = 0x0,
            }),
            ///  Interrupt Set-Enable Register
            ISER1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SETENA
                SETENA: u32 = 0x0,
            }),
            ///  Interrupt Set-Enable Register
            ISER2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SETENA
                SETENA: u32 = 0x0,
            }),
            ///  Interrupt Set-Enable Register
            ISER3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SETENA
                SETENA: u32 = 0x0,
            }),
            reserved128: [112]u8,
            ///  Interrupt Clear-Enable Register
            ICER0: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CLRENA
                CLRENA: u32 = 0x0,
            }),
            ///  Interrupt Clear-Enable Register
            ICER1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CLRENA
                CLRENA: u32 = 0x0,
            }),
            ///  Interrupt Clear-Enable Register
            ICER2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CLRENA
                CLRENA: u32 = 0x0,
            }),
            ///  Interrupt Clear-Enable Register
            ICER3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CLRENA
                CLRENA: u32 = 0x0,
            }),
            reserved256: [112]u8,
            ///  Interrupt Set-Pending Register
            ISPR0: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SETPEND
                SETPEND: u32 = 0x0,
            }),
            ///  Interrupt Set-Pending Register
            ISPR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SETPEND
                SETPEND: u32 = 0x0,
            }),
            ///  Interrupt Set-Pending Register
            ISPR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SETPEND
                SETPEND: u32 = 0x0,
            }),
            ///  Interrupt Set-Pending Register
            ISPR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SETPEND
                SETPEND: u32 = 0x0,
            }),
            reserved384: [112]u8,
            ///  Interrupt Clear-Pending Register
            ICPR0: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CLRPEND
                CLRPEND: u32 = 0x0,
            }),
            ///  Interrupt Clear-Pending Register
            ICPR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CLRPEND
                CLRPEND: u32 = 0x0,
            }),
            ///  Interrupt Clear-Pending Register
            ICPR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CLRPEND
                CLRPEND: u32 = 0x0,
            }),
            ///  Interrupt Clear-Pending Register
            ICPR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CLRPEND
                CLRPEND: u32 = 0x0,
            }),
            reserved512: [112]u8,
            ///  Interrupt Active Bit Register
            IABR0: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ACTIVE
                ACTIVE: u32 = 0x0,
            }),
            ///  Interrupt Active Bit Register
            IABR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ACTIVE
                ACTIVE: u32 = 0x0,
            }),
            ///  Interrupt Active Bit Register
            IABR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ACTIVE
                ACTIVE: u32 = 0x0,
            }),
            ///  Interrupt Active Bit Register
            IABR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ACTIVE
                ACTIVE: u32 = 0x0,
            }),
            reserved768: [240]u8,
            ///  Interrupt Priority Register
            IPR0: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR5: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR6: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR7: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR8: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR9: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR10: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR11: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR12: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR13: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR14: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR15: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR16: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR17: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR18: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR19: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR20: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IPR_N0
                IPR_N0: u8 = 0x0,
                ///  IPR_N1
                IPR_N1: u8 = 0x0,
                ///  IPR_N2
                IPR_N2: u8 = 0x0,
                ///  IPR_N3
                IPR_N3: u8 = 0x0,
            }),
            ///  Interrupt Priority Register
            IPR21: u32,
            ///  Interrupt Priority Register
            IPR22: u32,
            ///  Interrupt Priority Register
            IPR23: u32,
            ///  Interrupt Priority Register
            IPR24: u32,
            ///  Interrupt Priority Register
            IPR25: u32,
            reserved3584: [2712]u8,
            ///  Software trigger interrupt register
            STIR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software generated interrupt ID
                INTID: u9 = 0x0,
                padding: u23 = 0x0,
            }),
        };

        ///  Advanced-timers
        pub const TIM2 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Counter enable
                CEN: u1 = 0x0,
                ///  Update disable
                UDIS: u1 = 0x0,
                ///  Update request source
                URS: u1 = 0x0,
                ///  One-pulse mode
                OPM: u1 = 0x0,
                ///  Direction
                DIR: u1 = 0x0,
                ///  Center-aligned mode selection
                CMS: u2 = 0x0,
                ///  Auto-reload preload enable
                ARPE: u1 = 0x0,
                ///  Clock division
                CKD: u2 = 0x0,
                reserved11: u1 = 0x0,
                ///  UIF status bit remapping
                UIFREMAP: u1 = 0x0,
                ///  Dithering Enable
                DITHEN: u1 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/compare preloaded control
                CCPC: u1 = 0x0,
                reserved2: u1 = 0x0,
                ///  Capture/compare control update selection
                CCUS: u1 = 0x0,
                ///  Capture/compare DMA selection
                CCDS: u1 = 0x0,
                ///  Master mode selection
                MMS: u3 = 0x0,
                ///  TI1 selection
                TI1S: u1 = 0x0,
                ///  Output Idle state 1
                OIS1: u1 = 0x0,
                ///  Output Idle state 1
                OIS1N: u1 = 0x0,
                ///  Output Idle state 2
                OIS2: u1 = 0x0,
                ///  Output Idle state 2
                OIS2N: u1 = 0x0,
                ///  Output Idle state 3
                OIS3: u1 = 0x0,
                ///  Output Idle state 3
                OIS3N: u1 = 0x0,
                ///  Output Idle state 4
                OIS4: u1 = 0x0,
                ///  Output Idle state 4 (OC4N output)
                OIS4N: u1 = 0x0,
                ///  Output Idle state 5 (OC5 output)
                OIS5: u1 = 0x0,
                reserved18: u1 = 0x0,
                ///  Output Idle state 6 (OC6 output)
                OIS6: u1 = 0x0,
                reserved20: u1 = 0x0,
                ///  Master mode selection 2
                MMS2: u4 = 0x0,
                reserved25: u1 = 0x0,
                ///  Master mode selection - bit 3
                MMS_3: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  slave mode control register
            SMCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Slave mode selection
                SMS: u3 = 0x0,
                ///  OCREF clear selection
                OCCS: u1 = 0x0,
                ///  Trigger selection
                TS: u3 = 0x0,
                ///  Master/Slave mode
                MSM: u1 = 0x0,
                ///  External trigger filter
                ETF: u4 = 0x0,
                ///  External trigger prescaler
                ETPS: u2 = 0x0,
                ///  External clock enable
                ECE: u1 = 0x0,
                ///  External trigger polarity
                ETP: u1 = 0x0,
                ///  Slave mode selection - bit 3
                SMS_3: u1 = 0x0,
                reserved20: u3 = 0x0,
                ///  Trigger selection - bit 4:3
                TS_4_3: u2 = 0x0,
                reserved24: u2 = 0x0,
                ///  SMS Preload Enable
                SMSPE: u1 = 0x0,
                ///  SMS Preload Source
                SMSPS: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt enable
                UIE: u1 = 0x0,
                ///  Capture/Compare 1 interrupt enable
                CC1IE: u1 = 0x0,
                ///  Capture/Compare 2 interrupt enable
                CC2IE: u1 = 0x0,
                ///  Capture/Compare 3 interrupt enable
                CC3IE: u1 = 0x0,
                ///  Capture/Compare 4 interrupt enable
                CC4IE: u1 = 0x0,
                ///  COM interrupt enable
                COMIE: u1 = 0x0,
                ///  Trigger interrupt enable
                TIE: u1 = 0x0,
                ///  Break interrupt enable
                BIE: u1 = 0x0,
                ///  Update DMA request enable
                UDE: u1 = 0x0,
                ///  Capture/Compare 1 DMA request enable
                CC1DE: u1 = 0x0,
                ///  Capture/Compare 2 DMA request enable
                CC2DE: u1 = 0x0,
                ///  Capture/Compare 3 DMA request enable
                CC3DE: u1 = 0x0,
                ///  Capture/Compare 4 DMA request enable
                CC4DE: u1 = 0x0,
                ///  COM DMA request enable
                COMDE: u1 = 0x0,
                ///  Trigger DMA request enable
                TDE: u1 = 0x0,
                reserved20: u5 = 0x0,
                ///  Index interrupt enable
                IDXIE: u1 = 0x0,
                ///  Direction Change interrupt enable
                DIRIE: u1 = 0x0,
                ///  Index Error interrupt enable
                IERRIE: u1 = 0x0,
                ///  Transition Error interrupt enable
                TERRIE: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt flag
                UIF: u1 = 0x0,
                ///  Capture/compare 1 interrupt flag
                CC1IF: u1 = 0x0,
                ///  Capture/Compare 2 interrupt flag
                CC2IF: u1 = 0x0,
                ///  Capture/Compare 3 interrupt flag
                CC3IF: u1 = 0x0,
                ///  Capture/Compare 4 interrupt flag
                CC4IF: u1 = 0x0,
                ///  COM interrupt flag
                COMIF: u1 = 0x0,
                ///  Trigger interrupt flag
                TIF: u1 = 0x0,
                ///  Break interrupt flag
                BIF: u1 = 0x0,
                ///  Break 2 interrupt flag
                B2IF: u1 = 0x0,
                ///  Capture/Compare 1 overcapture flag
                CC1OF: u1 = 0x0,
                ///  Capture/compare 2 overcapture flag
                CC2OF: u1 = 0x0,
                ///  Capture/Compare 3 overcapture flag
                CC3OF: u1 = 0x0,
                ///  Capture/Compare 4 overcapture flag
                CC4OF: u1 = 0x0,
                ///  System Break interrupt flag
                SBIF: u1 = 0x0,
                reserved16: u2 = 0x0,
                ///  Compare 5 interrupt flag
                CC5IF: u1 = 0x0,
                ///  Compare 6 interrupt flag
                CC6IF: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Index interrupt flag
                IDXF: u1 = 0x0,
                ///  Direction Change interrupt flag
                DIRF: u1 = 0x0,
                ///  Index Error interrupt flag
                IERRF: u1 = 0x0,
                ///  Transition Error interrupt flag
                TERRF: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update generation
                UG: u1 = 0x0,
                ///  Capture/compare 1 generation
                CC1G: u1 = 0x0,
                ///  Capture/compare 2 generation
                CC2G: u1 = 0x0,
                ///  Capture/compare 3 generation
                CC3G: u1 = 0x0,
                ///  Capture/compare 4 generation
                CC4G: u1 = 0x0,
                ///  Capture/Compare control update generation
                COMG: u1 = 0x0,
                ///  Trigger generation
                TG: u1 = 0x0,
                ///  Break generation
                BG: u1 = 0x0,
                ///  Break 2 generation
                B2G: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  capture/compare mode register 1 (output mode)
            CCMR1_Output: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 selection
                CC1S: u2 = 0x0,
                ///  Output Compare 1 fast enable
                OC1FE: u1 = 0x0,
                ///  Output Compare 1 preload enable
                OC1PE: u1 = 0x0,
                ///  Output Compare 1 mode
                OC1M: u3 = 0x0,
                ///  Output Compare 1 clear enable
                OC1CE: u1 = 0x0,
                ///  Capture/Compare 2 selection
                CC2S: u2 = 0x0,
                ///  Output Compare 2 fast enable
                OC2FE: u1 = 0x0,
                ///  Output Compare 2 preload enable
                OC2PE: u1 = 0x0,
                ///  Output Compare 2 mode
                OC2M: u3 = 0x0,
                ///  Output Compare 2 clear enable
                OC2CE: u1 = 0x0,
                ///  Output Compare 1 mode - bit 3
                OC1M_3: u1 = 0x0,
                reserved24: u7 = 0x0,
                ///  Output Compare 2 mode - bit 3
                OC2M_3: u1 = 0x0,
                padding: u7 = 0x0,
            }),
            ///  capture/compare mode register 2 (output mode)
            CCMR2_Output: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 3 selection
                CC3S: u2 = 0x0,
                ///  Output compare 3 fast enable
                OC3FE: u1 = 0x0,
                ///  Output compare 3 preload enable
                OC3PE: u1 = 0x0,
                ///  Output compare 3 mode
                OC3M: u3 = 0x0,
                ///  Output compare 3 clear enable
                OC3CE: u1 = 0x0,
                ///  Capture/Compare 4 selection
                CC4S: u2 = 0x0,
                ///  Output compare 4 fast enable
                OC4FE: u1 = 0x0,
                ///  Output compare 4 preload enable
                OC4PE: u1 = 0x0,
                ///  Output compare 4 mode
                OC4M: u3 = 0x0,
                ///  Output compare 4 clear enable
                OC4CE: u1 = 0x0,
                ///  Output Compare 3 mode - bit 3
                OC3M_3: u1 = 0x0,
                reserved24: u7 = 0x0,
                ///  Output Compare 4 mode - bit 3
                OC4M_3: u1 = 0x0,
                padding: u7 = 0x0,
            }),
            ///  capture/compare enable register
            CCER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 output enable
                CC1E: u1 = 0x0,
                ///  Capture/Compare 1 output Polarity
                CC1P: u1 = 0x0,
                ///  Capture/Compare 1 complementary output enable
                CC1NE: u1 = 0x0,
                ///  Capture/Compare 1 output Polarity
                CC1NP: u1 = 0x0,
                ///  Capture/Compare 2 output enable
                CC2E: u1 = 0x0,
                ///  Capture/Compare 2 output Polarity
                CC2P: u1 = 0x0,
                ///  Capture/Compare 2 complementary output enable
                CC2NE: u1 = 0x0,
                ///  Capture/Compare 2 output Polarity
                CC2NP: u1 = 0x0,
                ///  Capture/Compare 3 output enable
                CC3E: u1 = 0x0,
                ///  Capture/Compare 3 output Polarity
                CC3P: u1 = 0x0,
                ///  Capture/Compare 3 complementary output enable
                CC3NE: u1 = 0x0,
                ///  Capture/Compare 3 output Polarity
                CC3NP: u1 = 0x0,
                ///  Capture/Compare 4 output enable
                CC4E: u1 = 0x0,
                ///  Capture/Compare 3 output Polarity
                CC4P: u1 = 0x0,
                ///  Capture/Compare 4 complementary output enable
                CC4NE: u1 = 0x0,
                ///  Capture/Compare 4 complementary output polarity
                CC4NP: u1 = 0x0,
                ///  Capture/Compare 5 output enable
                CC5E: u1 = 0x0,
                ///  Capture/Compare 5 output polarity
                CC5P: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Capture/Compare 6 output enable
                CC6E: u1 = 0x0,
                ///  Capture/Compare 6 output polarity
                CC6P: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  counter value
                CNT: u16 = 0x0,
                reserved31: u15 = 0x0,
                ///  UIFCPY
                UIFCPY: u1 = 0x0,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Prescaler value
                PSC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFFF
                ///  Auto-reload value
                ARR: u16 = 0xFFFF,
                padding: u16 = 0xFFFF,
            }),
            ///  repetition counter register
            RCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Repetition counter value
                REP: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare register 1
            CCR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 1 value
                CCR1: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare register 2
            CCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare 2 value
                CCR2: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare register 3
            CCR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare value
                CCR3: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare register 4
            CCR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare value
                CCR4: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  break and dead-time register
            BDTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dead-time generator setup
                DTG: u8 = 0x0,
                ///  Lock configuration
                LOCK: u2 = 0x0,
                ///  Off-state selection for Idle mode
                OSSI: u1 = 0x0,
                ///  Off-state selection for Run mode
                OSSR: u1 = 0x0,
                ///  Break enable
                BKE: u1 = 0x0,
                ///  Break polarity
                BKP: u1 = 0x0,
                ///  Automatic output enable
                AOE: u1 = 0x0,
                ///  Main output enable
                MOE: u1 = 0x0,
                ///  Break filter
                BKF: u4 = 0x0,
                ///  Break 2 filter
                BK2F: u4 = 0x0,
                ///  Break 2 Enable
                BK2E: u1 = 0x0,
                ///  Break 2 polarity
                BK2P: u1 = 0x0,
                ///  BKDSRM
                BKDSRM: u1 = 0x0,
                ///  BK2DSRM
                BK2DSRM: u1 = 0x0,
                ///  BKBID
                BKBID: u1 = 0x0,
                ///  BK2ID
                BK2ID: u1 = 0x0,
                padding: u2 = 0x0,
            }),
            ///  capture/compare register 4
            CCR5: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare value
                CCR5: u16 = 0x0,
                reserved29: u13 = 0x0,
                ///  Group Channel 5 and Channel 1
                GC5C1: u1 = 0x0,
                ///  Group Channel 5 and Channel 2
                GC5C2: u1 = 0x0,
                ///  Group Channel 5 and Channel 3
                GC5C3: u1 = 0x0,
            }),
            ///  capture/compare register 4
            CCR6: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Capture/Compare value
                CCR6: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  capture/compare mode register 2 (output mode)
            CCMR3_Output: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved2: u2 = 0x0,
                ///  Output compare 5 fast enable
                OC5FE: u1 = 0x0,
                ///  Output compare 5 preload enable
                OC5PE: u1 = 0x0,
                ///  Output compare 5 mode
                OC5M: u3 = 0x0,
                ///  Output compare 5 clear enable
                OC5CE: u1 = 0x0,
                reserved10: u2 = 0x0,
                ///  Output compare 6 fast enable
                OC6FE: u1 = 0x0,
                ///  Output compare 6 preload enable
                OC6PE: u1 = 0x0,
                ///  Output compare 6 mode
                OC6M: u3 = 0x0,
                ///  Output compare 6 clear enable
                OC6CE: u1 = 0x0,
                ///  Output Compare 5 mode bit 3
                OC5M_bit3: u3 = 0x0,
                reserved24: u5 = 0x0,
                ///  Output Compare 6 mode bit 3
                OC6M_bit3: u1 = 0x0,
                padding: u7 = 0x0,
            }),
            ///  timer Deadtime Register 2
            DTR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dead-time falling edge generator setup
                DTGF: u8 = 0x0,
                reserved16: u8 = 0x0,
                ///  Deadtime Asymmetric Enable
                DTAE: u1 = 0x0,
                ///  Deadtime Preload Enable
                DTPE: u1 = 0x0,
                padding: u14 = 0x0,
            }),
            ///  DMA control register
            ECR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Index Enable
                IE: u1 = 0x0,
                ///  Index Direction
                IDIR: u2 = 0x0,
                ///  Index Blanking
                IBLK: u2 = 0x0,
                ///  First Index
                FIDX: u1 = 0x0,
                ///  Index Positioning
                IPOS: u2 = 0x0,
                reserved16: u8 = 0x0,
                ///  Pulse width
                PW: u8 = 0x0,
                ///  Pulse Width prescaler
                PWPRSC: u3 = 0x0,
                padding: u5 = 0x0,
            }),
            ///  TIM timer input selection register
            TISEL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TI1[0] to TI1[15] input selection
                TI1SEL: u4 = 0x0,
                reserved8: u4 = 0x0,
                ///  TI2[0] to TI2[15] input selection
                TI2SEL: u4 = 0x0,
                reserved16: u4 = 0x0,
                ///  TI3[0] to TI3[15] input selection
                TI3SEL: u4 = 0x0,
                reserved24: u4 = 0x0,
                ///  TI4[0] to TI4[15] input selection
                TI4SEL: u4 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  TIM alternate function option register 1
            AF1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BRK BKIN input enable
                BKINE: u1 = 0x0,
                ///  BRK COMP1 enable
                BKCMP1E: u1 = 0x0,
                ///  BRK COMP2 enable
                BKCMP2E: u1 = 0x0,
                ///  BRK COMP3 enable
                BKCMP3E: u1 = 0x0,
                ///  BRK COMP4 enable
                BKCMP4E: u1 = 0x0,
                ///  BRK COMP5 enable
                BKCMP5E: u1 = 0x0,
                ///  BRK COMP6 enable
                BKCMP6E: u1 = 0x0,
                ///  BRK COMP7 enable
                BKCMP7E: u1 = 0x0,
                reserved9: u1 = 0x0,
                ///  BRK BKIN input polarity
                BKINP: u1 = 0x0,
                ///  BRK COMP1 input polarity
                BKCMP1P: u1 = 0x0,
                ///  BRK COMP2 input polarity
                BKCMP2P: u1 = 0x0,
                ///  BRK COMP3 input polarity
                BKCMP3P: u1 = 0x0,
                ///  BRK COMP4 input polarity
                BKCMP4P: u1 = 0x0,
                ///  ETR source selection
                ETRSEL: u4 = 0x0,
                padding: u14 = 0x0,
            }),
            ///  TIM alternate function option register 2
            AF2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BRK BKIN input enable
                BKINE: u1 = 0x0,
                ///  BRK2 COMP1 enable
                BK2CMP1E: u1 = 0x0,
                ///  BRK2 COMP2 enable
                BK2CMP2E: u1 = 0x0,
                ///  BRK2 COMP3 enable
                BK2CMP3E: u1 = 0x0,
                ///  BRK2 COMP4 enable
                BK2CMP4E: u1 = 0x0,
                ///  BRK2 COMP5 enable
                BK2CMP5E: u1 = 0x0,
                ///  BRK2 COMP6 enable
                BK2CMP6E: u1 = 0x0,
                ///  BRK2 COMP7 enable
                BK2CMP7E: u1 = 0x0,
                reserved9: u1 = 0x0,
                ///  BRK2 BKIN input polarity
                BK2INP: u1 = 0x0,
                ///  BRK2 COMP1 input polarity
                BK2CMP1P: u1 = 0x0,
                ///  BRK2 COMP2 input polarity
                BK2CMP2P: u1 = 0x0,
                ///  BRK2 COMP3 input polarity
                BK2CMP3P: u1 = 0x0,
                ///  BRK2 COMP4 input polarity
                BK2CMP4P: u1 = 0x0,
                reserved16: u2 = 0x0,
                ///  OCREF_CLR source selection
                OCRSEL: u3 = 0x0,
                padding: u13 = 0x0,
            }),
            reserved988: [884]u8,
            ///  control register
            DCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA base address
                DBA: u5 = 0x0,
                reserved8: u3 = 0x0,
                ///  DMA burst length
                DBL: u5 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  DMA address for full transfer
            DMAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA register for burst accesses
                DMAB: u32 = 0x0,
            }),
        };

        ///  System control block
        pub const SCB = extern struct {
            ///  CPUID base register
            CPUID: mmio.Mmio(packed struct(u32) { // reset_value: 0x410FC241
                ///  Revision number
                Revision: u4 = 0x1,
                ///  Part number of the processor
                PartNo: u12 = 0xC24,
                ///  Reads as 0xF
                Constant: u4 = 0xF,
                ///  Variant number
                Variant: u4 = 0x0,
                ///  Implementer code
                Implementer: u8 = 0x41,
            }),
            ///  Interrupt control and state register
            ICSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Active vector
                VECTACTIVE: u9 = 0x0,
                reserved11: u2 = 0x0,
                ///  Return to base level
                RETTOBASE: u1 = 0x0,
                ///  Pending vector
                VECTPENDING: u7 = 0x0,
                reserved22: u3 = 0x0,
                ///  Interrupt pending flag
                ISRPENDING: u1 = 0x0,
                reserved25: u2 = 0x0,
                ///  SysTick exception clear-pending bit
                PENDSTCLR: u1 = 0x0,
                ///  SysTick exception set-pending bit
                PENDSTSET: u1 = 0x0,
                ///  PendSV clear-pending bit
                PENDSVCLR: u1 = 0x0,
                ///  PendSV set-pending bit
                PENDSVSET: u1 = 0x0,
                reserved31: u2 = 0x0,
                ///  NMI set-pending bit.
                NMIPENDSET: u1 = 0x0,
            }),
            ///  Vector table offset register
            VTOR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved9: u9 = 0x0,
                ///  Vector table base offset field
                TBLOFF: u21 = 0x0,
                padding: u2 = 0x0,
            }),
            ///  Application interrupt and reset control register
            AIRCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  VECTRESET
                VECTRESET: u1 = 0x0,
                ///  VECTCLRACTIVE
                VECTCLRACTIVE: u1 = 0x0,
                ///  SYSRESETREQ
                SYSRESETREQ: u1 = 0x0,
                reserved8: u5 = 0x0,
                ///  PRIGROUP
                PRIGROUP: u3 = 0x0,
                reserved15: u4 = 0x0,
                ///  ENDIANESS
                ENDIANESS: u1 = 0x0,
                ///  Register key
                VECTKEYSTAT: u16 = 0x0,
            }),
            ///  System control register
            SCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  SLEEPONEXIT
                SLEEPONEXIT: u1 = 0x0,
                ///  SLEEPDEEP
                SLEEPDEEP: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  Send Event on Pending bit
                SEVEONPEND: u1 = 0x0,
                padding: u27 = 0x0,
            }),
            ///  Configuration and control register
            CCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Configures how the processor enters Thread mode
                NONBASETHRDENA: u1 = 0x0,
                ///  USERSETMPEND
                USERSETMPEND: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  UNALIGN_ TRP
                UNALIGN__TRP: u1 = 0x0,
                ///  DIV_0_TRP
                DIV_0_TRP: u1 = 0x0,
                reserved8: u3 = 0x0,
                ///  BFHFNMIGN
                BFHFNMIGN: u1 = 0x0,
                ///  STKALIGN
                STKALIGN: u1 = 0x0,
                padding: u22 = 0x0,
            }),
            ///  System handler priority registers
            SHPR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Priority of system handler 4
                PRI_4: u8 = 0x0,
                ///  Priority of system handler 5
                PRI_5: u8 = 0x0,
                ///  Priority of system handler 6
                PRI_6: u8 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  System handler priority registers
            SHPR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved24: u24 = 0x0,
                ///  Priority of system handler 11
                PRI_11: u8 = 0x0,
            }),
            ///  System handler priority registers
            SHPR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved16: u16 = 0x0,
                ///  Priority of system handler 14
                PRI_14: u8 = 0x0,
                ///  Priority of system handler 15
                PRI_15: u8 = 0x0,
            }),
            ///  System handler control and state register
            SHCRS: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory management fault exception active bit
                MEMFAULTACT: u1 = 0x0,
                ///  Bus fault exception active bit
                BUSFAULTACT: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  Usage fault exception active bit
                USGFAULTACT: u1 = 0x0,
                reserved7: u3 = 0x0,
                ///  SVC call active bit
                SVCALLACT: u1 = 0x0,
                ///  Debug monitor active bit
                MONITORACT: u1 = 0x0,
                reserved10: u1 = 0x0,
                ///  PendSV exception active bit
                PENDSVACT: u1 = 0x0,
                ///  SysTick exception active bit
                SYSTICKACT: u1 = 0x0,
                ///  Usage fault exception pending bit
                USGFAULTPENDED: u1 = 0x0,
                ///  Memory management fault exception pending bit
                MEMFAULTPENDED: u1 = 0x0,
                ///  Bus fault exception pending bit
                BUSFAULTPENDED: u1 = 0x0,
                ///  SVC call pending bit
                SVCALLPENDED: u1 = 0x0,
                ///  Memory management fault enable bit
                MEMFAULTENA: u1 = 0x0,
                ///  Bus fault enable bit
                BUSFAULTENA: u1 = 0x0,
                ///  Usage fault enable bit
                USGFAULTENA: u1 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  Configurable fault status register
            CFSR_UFSR_BFSR_MMFSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Instruction access violation flag
                IACCVIOL: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  Memory manager fault on unstacking for a return from exception
                MUNSTKERR: u1 = 0x0,
                ///  Memory manager fault on stacking for exception entry.
                MSTKERR: u1 = 0x0,
                ///  MLSPERR
                MLSPERR: u1 = 0x0,
                reserved7: u1 = 0x0,
                ///  Memory Management Fault Address Register (MMAR) valid flag
                MMARVALID: u1 = 0x0,
                ///  Instruction bus error
                IBUSERR: u1 = 0x0,
                ///  Precise data bus error
                PRECISERR: u1 = 0x0,
                ///  Imprecise data bus error
                IMPRECISERR: u1 = 0x0,
                ///  Bus fault on unstacking for a return from exception
                UNSTKERR: u1 = 0x0,
                ///  Bus fault on stacking for exception entry
                STKERR: u1 = 0x0,
                ///  Bus fault on floating-point lazy state preservation
                LSPERR: u1 = 0x0,
                reserved15: u1 = 0x0,
                ///  Bus Fault Address Register (BFAR) valid flag
                BFARVALID: u1 = 0x0,
                ///  Undefined instruction usage fault
                UNDEFINSTR: u1 = 0x0,
                ///  Invalid state usage fault
                INVSTATE: u1 = 0x0,
                ///  Invalid PC load usage fault
                INVPC: u1 = 0x0,
                ///  No coprocessor usage fault.
                NOCP: u1 = 0x0,
                reserved24: u4 = 0x0,
                ///  Unaligned access usage fault
                UNALIGNED: u1 = 0x0,
                ///  Divide by zero usage fault
                DIVBYZERO: u1 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  Hard fault status register
            HFSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Vector table hard fault
                VECTTBL: u1 = 0x0,
                reserved30: u28 = 0x0,
                ///  Forced hard fault
                FORCED: u1 = 0x0,
                ///  Reserved for Debug use
                DEBUG_VT: u1 = 0x0,
            }),
            reserved52: [4]u8,
            ///  Memory management fault address register
            MMFAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory management fault address
                MMFAR: u32 = 0x0,
            }),
            ///  Bus fault address register
            BFAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Bus fault address
                BFAR: u32 = 0x0,
            }),
            ///  Auxiliary fault status register
            AFSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Implementation defined
                IMPDEF: u32 = 0x0,
            }),
        };

        ///  SysTick timer
        pub const STK = extern struct {
            ///  SysTick control and status register
            CTRL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Counter enable
                ENABLE: u1 = 0x0,
                ///  SysTick exception request enable
                TICKINT: u1 = 0x0,
                ///  Clock source selection
                CLKSOURCE: u1 = 0x0,
                reserved16: u13 = 0x0,
                ///  COUNTFLAG
                COUNTFLAG: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  SysTick reload value register
            LOAD: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RELOAD value
                RELOAD: u24 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  SysTick current value register
            VAL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Current counter value
                CURRENT: u24 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  SysTick calibration value register
            CALIB: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Calibration value
                TENMS: u24 = 0x0,
                reserved30: u6 = 0x0,
                ///  SKEW flag: Indicates whether the TENMS value is exact
                SKEW: u1 = 0x0,
                ///  NOREF flag. Reads as zero
                NOREF: u1 = 0x0,
            }),
        };

        ///  Memory protection unit
        pub const MPU = extern struct {
            ///  MPU type register
            TYPER: mmio.Mmio(packed struct(u32) { // reset_value: 0x800
                ///  Separate flag
                SEPARATE: u1 = 0x0,
                reserved8: u7 = 0x0,
                ///  Number of MPU data regions
                DREGION: u8 = 0x8,
                ///  Number of MPU instruction regions
                IREGION: u8 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  MPU control register
            CTRL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Enables the MPU
                ENABLE: u1 = 0x0,
                ///  Enables the operation of MPU during hard fault
                HFNMIENA: u1 = 0x0,
                ///  Enable priviliged software access to default memory map
                PRIVDEFENA: u1 = 0x0,
                padding: u29 = 0x0,
            }),
            ///  MPU region number register
            RNR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  MPU region
                REGION: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  MPU region base address register
            RBAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  MPU region field
                REGION: u4 = 0x0,
                ///  MPU region number valid
                VALID: u1 = 0x0,
                ///  Region base address field
                ADDR: u27 = 0x0,
            }),
            ///  MPU region attribute and size register
            RASR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Region enable bit.
                ENABLE: u1 = 0x0,
                ///  Size of the MPU protection region
                SIZE: u5 = 0x0,
                reserved8: u2 = 0x0,
                ///  Subregion disable bits
                SRD: u8 = 0x0,
                ///  memory attribute
                B: u1 = 0x0,
                ///  memory attribute
                C: u1 = 0x0,
                ///  Shareable memory attribute
                S: u1 = 0x0,
                ///  memory attribute
                TEX: u3 = 0x0,
                reserved24: u2 = 0x0,
                ///  Access permission
                AP: u3 = 0x0,
                reserved28: u1 = 0x0,
                ///  Instruction access disable bit
                XN: u1 = 0x0,
                padding: u3 = 0x0,
            }),
        };

        ///  Basic-timers
        pub const TIM6 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Counter enable
                CEN: u1 = 0x0,
                ///  Update disable
                UDIS: u1 = 0x0,
                ///  Update request source
                URS: u1 = 0x0,
                ///  One-pulse mode
                OPM: u1 = 0x0,
                reserved7: u3 = 0x0,
                ///  Auto-reload preload enable
                ARPE: u1 = 0x0,
                reserved11: u3 = 0x0,
                ///  UIF status bit remapping
                UIFREMAP: u1 = 0x0,
                ///  Dithering Enable
                DITHEN: u1 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved4: u4 = 0x0,
                ///  Master mode selection
                MMS: u3 = 0x0,
                padding: u25 = 0x0,
            }),
            reserved12: [4]u8,
            ///  DMA/Interrupt enable register
            DIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt enable
                UIE: u1 = 0x0,
                reserved8: u7 = 0x0,
                ///  Update DMA request enable
                UDE: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update interrupt flag
                UIF: u1 = 0x0,
                padding: u31 = 0x0,
            }),
            ///  event generation register
            EGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Update generation
                UG: u1 = 0x0,
                padding: u31 = 0x0,
            }),
            reserved36: [12]u8,
            ///  counter
            CNT: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Low counter value
                CNT: u16 = 0x0,
                reserved31: u15 = 0x0,
                ///  UIF Copy
                UIFCPY: u1 = 0x0,
            }),
            ///  prescaler
            PSC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Prescaler value
                PSC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  auto-reload register
            ARR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Low Auto-reload value
                ARR: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
        };

        ///  Floting point unit
        pub const FPU = extern struct {
            ///  Floating-point context control register
            FPCCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  LSPACT
                LSPACT: u1 = 0x0,
                ///  USER
                USER: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  THREAD
                THREAD: u1 = 0x0,
                ///  HFRDY
                HFRDY: u1 = 0x0,
                ///  MMRDY
                MMRDY: u1 = 0x0,
                ///  BFRDY
                BFRDY: u1 = 0x0,
                reserved8: u1 = 0x0,
                ///  MONRDY
                MONRDY: u1 = 0x0,
                reserved30: u21 = 0x0,
                ///  LSPEN
                LSPEN: u1 = 0x0,
                ///  ASPEN
                ASPEN: u1 = 0x0,
            }),
            ///  Floating-point context address register
            FPCAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved3: u3 = 0x0,
                ///  Location of unpopulated floating-point
                ADDRESS: u29 = 0x0,
            }),
            ///  Floating-point status control register
            FPSCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Invalid operation cumulative exception bit
                IOC: u1 = 0x0,
                ///  Division by zero cumulative exception bit.
                DZC: u1 = 0x0,
                ///  Overflow cumulative exception bit
                OFC: u1 = 0x0,
                ///  Underflow cumulative exception bit
                UFC: u1 = 0x0,
                ///  Inexact cumulative exception bit
                IXC: u1 = 0x0,
                reserved7: u2 = 0x0,
                ///  Input denormal cumulative exception bit.
                IDC: u1 = 0x0,
                reserved22: u14 = 0x0,
                ///  Rounding Mode control field
                RMode: u2 = 0x0,
                ///  Flush-to-zero mode control bit:
                FZ: u1 = 0x0,
                ///  Default NaN mode control bit
                DN: u1 = 0x0,
                ///  Alternative half-precision control bit
                AHP: u1 = 0x0,
                reserved28: u1 = 0x0,
                ///  Overflow condition code flag
                V: u1 = 0x0,
                ///  Carry condition code flag
                C: u1 = 0x0,
                ///  Zero condition code flag
                Z: u1 = 0x0,
                ///  Negative condition code flag
                N: u1 = 0x0,
            }),
        };

        ///  Low power timer
        pub const LPTIMER1 = extern struct {
            ///  Interrupt and Status Register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare match
                CMPM: u1 = 0x0,
                ///  Autoreload match
                ARRM: u1 = 0x0,
                ///  External trigger edge event
                EXTTRIG: u1 = 0x0,
                ///  Compare register update OK
                CMPOK: u1 = 0x0,
                ///  Autoreload register update OK
                ARROK: u1 = 0x0,
                ///  Counter direction change down to up
                UP: u1 = 0x0,
                ///  Counter direction change up to down
                DOWN: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  Interrupt Clear Register
            ICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  compare match Clear Flag
                CMPMCF: u1 = 0x0,
                ///  Autoreload match Clear Flag
                ARRMCF: u1 = 0x0,
                ///  External trigger valid edge Clear Flag
                EXTTRIGCF: u1 = 0x0,
                ///  Compare register update OK Clear Flag
                CMPOKCF: u1 = 0x0,
                ///  Autoreload register update OK Clear Flag
                ARROKCF: u1 = 0x0,
                ///  Direction change to UP Clear Flag
                UPCF: u1 = 0x0,
                ///  Direction change to down Clear Flag
                DOWNCF: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  Interrupt Enable Register
            IER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare match Interrupt Enable
                CMPMIE: u1 = 0x0,
                ///  Autoreload match Interrupt Enable
                ARRMIE: u1 = 0x0,
                ///  External trigger valid edge Interrupt Enable
                EXTTRIGIE: u1 = 0x0,
                ///  Compare register update OK Interrupt Enable
                CMPOKIE: u1 = 0x0,
                ///  Autoreload register update OK Interrupt Enable
                ARROKIE: u1 = 0x0,
                ///  Direction change to UP Interrupt Enable
                UPIE: u1 = 0x0,
                ///  Direction change to down Interrupt Enable
                DOWNIE: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  Configuration Register
            CFGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Clock selector
                CKSEL: u1 = 0x0,
                ///  Clock Polarity
                CKPOL: u2 = 0x0,
                ///  Configurable digital filter for external clock
                CKFLT: u2 = 0x0,
                reserved6: u1 = 0x0,
                ///  Configurable digital filter for trigger
                TRGFLT: u2 = 0x0,
                reserved9: u1 = 0x0,
                ///  Clock prescaler
                PRESC: u3 = 0x0,
                reserved13: u1 = 0x0,
                ///  Trigger selector
                TRIGSEL: u4 = 0x0,
                ///  Trigger enable and polarity
                TRIGEN: u2 = 0x0,
                ///  Timeout enable
                TIMOUT: u1 = 0x0,
                ///  Waveform shape
                WAVE: u1 = 0x0,
                ///  Waveform shape polarity
                WAVPOL: u1 = 0x0,
                ///  Registers update mode
                PRELOAD: u1 = 0x0,
                ///  counter mode enabled
                COUNTMODE: u1 = 0x0,
                ///  Encoder mode enable
                ENC: u1 = 0x0,
                padding: u7 = 0x0,
            }),
            ///  Control Register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  LPTIM Enable
                ENABLE: u1 = 0x0,
                ///  LPTIM start in single mode
                SNGSTRT: u1 = 0x0,
                ///  Timer start in continuous mode
                CNTSTRT: u1 = 0x0,
                ///  COUNTRST
                COUNTRST: u1 = 0x0,
                ///  RSTARE
                RSTARE: u1 = 0x0,
                padding: u27 = 0x0,
            }),
            ///  Compare Register
            CMP: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare value
                CMP: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Autoreload Register
            ARR: mmio.Mmio(packed struct(u32) { // reset_value: 0x1
                ///  Auto reload value
                ARR: u16 = 0x1,
                padding: u16 = 0x0,
            }),
            ///  Counter Register
            CNT: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Counter value
                CNT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  option register
            OR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  IN1
                IN1: u1 = 0x0,
                ///  IN2
                IN2: u1 = 0x0,
                ///  IN1_2_1
                IN1_2_1: u2 = 0x0,
                ///  IN2_2_1
                IN2_2_1: u2 = 0x0,
                padding: u26 = 0x0,
            }),
        };

        ///  Universal synchronous asynchronous receiver transmitter
        pub const USART1 = extern struct {
            ///  Control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  USART enable
                UE: u1 = 0x0,
                ///  USART enable in Stop mode
                UESM: u1 = 0x0,
                ///  Receiver enable
                RE: u1 = 0x0,
                ///  Transmitter enable
                TE: u1 = 0x0,
                ///  IDLE interrupt enable
                IDLEIE: u1 = 0x0,
                ///  RXNE interrupt enable
                RXNEIE: u1 = 0x0,
                ///  Transmission complete interrupt enable
                TCIE: u1 = 0x0,
                ///  interrupt enable
                TXEIE: u1 = 0x0,
                ///  PE interrupt enable
                PEIE: u1 = 0x0,
                ///  Parity selection
                PS: u1 = 0x0,
                ///  Parity control enable
                PCE: u1 = 0x0,
                ///  Receiver wakeup method
                WAKE: u1 = 0x0,
                ///  Word length
                M0: u1 = 0x0,
                ///  Mute mode enable
                MME: u1 = 0x0,
                ///  Character match interrupt enable
                CMIE: u1 = 0x0,
                ///  Oversampling mode
                OVER8: u1 = 0x0,
                ///  DEDT0
                DEDT0: u1 = 0x0,
                ///  DEDT1
                DEDT1: u1 = 0x0,
                ///  DEDT2
                DEDT2: u1 = 0x0,
                ///  DEDT3
                DEDT3: u1 = 0x0,
                ///  Driver Enable de-assertion time
                DEDT4: u1 = 0x0,
                ///  DEAT0
                DEAT0: u1 = 0x0,
                ///  DEAT1
                DEAT1: u1 = 0x0,
                ///  DEAT2
                DEAT2: u1 = 0x0,
                ///  DEAT3
                DEAT3: u1 = 0x0,
                ///  Driver Enable assertion time
                DEAT4: u1 = 0x0,
                ///  Receiver timeout interrupt enable
                RTOIE: u1 = 0x0,
                ///  End of Block interrupt enable
                EOBIE: u1 = 0x0,
                ///  M1
                M1: u1 = 0x0,
                ///  FIFOEN
                FIFOEN: u1 = 0x0,
                ///  TXFEIE
                TXFEIE: u1 = 0x0,
                ///  RXFFIE
                RXFFIE: u1 = 0x0,
            }),
            ///  Control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SLVEN
                SLVEN: u1 = 0x0,
                reserved3: u2 = 0x0,
                ///  DIS_NSS
                DIS_NSS: u1 = 0x0,
                ///  7-bit Address Detection/4-bit Address Detection
                ADDM7: u1 = 0x0,
                ///  LIN break detection length
                LBDL: u1 = 0x0,
                ///  LIN break detection interrupt enable
                LBDIE: u1 = 0x0,
                reserved8: u1 = 0x0,
                ///  Last bit clock pulse
                LBCL: u1 = 0x0,
                ///  Clock phase
                CPHA: u1 = 0x0,
                ///  Clock polarity
                CPOL: u1 = 0x0,
                ///  Clock enable
                CLKEN: u1 = 0x0,
                ///  STOP bits
                STOP: u2 = 0x0,
                ///  LIN mode enable
                LINEN: u1 = 0x0,
                ///  Swap TX/RX pins
                SWAP: u1 = 0x0,
                ///  RX pin active level inversion
                RXINV: u1 = 0x0,
                ///  TX pin active level inversion
                TXINV: u1 = 0x0,
                ///  Binary data inversion
                TAINV: u1 = 0x0,
                ///  Most significant bit first
                MSBFIRST: u1 = 0x0,
                ///  Auto baud rate enable
                ABREN: u1 = 0x0,
                ///  ABRMOD0
                ABRMOD0: u1 = 0x0,
                ///  Auto baud rate mode
                ABRMOD1: u1 = 0x0,
                ///  Receiver timeout enable
                RTOEN: u1 = 0x0,
                ///  Address of the USART node
                ADD0_3: u4 = 0x0,
                ///  Address of the USART node
                ADD4_7: u4 = 0x0,
            }),
            ///  Control register 3
            CR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Error interrupt enable
                EIE: u1 = 0x0,
                ///  Ir mode enable
                IREN: u1 = 0x0,
                ///  Ir low-power
                IRLP: u1 = 0x0,
                ///  Half-duplex selection
                HDSEL: u1 = 0x0,
                ///  Smartcard NACK enable
                NACK: u1 = 0x0,
                ///  Smartcard mode enable
                SCEN: u1 = 0x0,
                ///  DMA enable receiver
                DMAR: u1 = 0x0,
                ///  DMA enable transmitter
                DMAT: u1 = 0x0,
                ///  RTS enable
                RTSE: u1 = 0x0,
                ///  CTS enable
                CTSE: u1 = 0x0,
                ///  CTS interrupt enable
                CTSIE: u1 = 0x0,
                ///  One sample bit method enable
                ONEBIT: u1 = 0x0,
                ///  Overrun Disable
                OVRDIS: u1 = 0x0,
                ///  DMA Disable on Reception Error
                DDRE: u1 = 0x0,
                ///  Driver enable mode
                DEM: u1 = 0x0,
                ///  Driver enable polarity selection
                DEP: u1 = 0x0,
                reserved17: u1 = 0x0,
                ///  Smartcard auto-retry count
                SCARCNT: u3 = 0x0,
                ///  Wakeup from Stop mode interrupt flag selection
                WUS: u2 = 0x0,
                ///  Wakeup from Stop mode interrupt enable
                WUFIE: u1 = 0x0,
                ///  TXFTIE
                TXFTIE: u1 = 0x0,
                ///  TCBGTIE
                TCBGTIE: u1 = 0x0,
                ///  RXFTCFG
                RXFTCFG: u3 = 0x0,
                ///  RXFTIE
                RXFTIE: u1 = 0x0,
                ///  TXFTCFG
                TXFTCFG: u3 = 0x0,
            }),
            ///  Baud rate register
            BRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DIV_Fraction
                DIV_Fraction: u4 = 0x0,
                ///  DIV_Mantissa
                DIV_Mantissa: u12 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Guard time and prescaler register
            GTPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Prescaler value
                PSC: u8 = 0x0,
                ///  Guard time value
                GT: u8 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Receiver timeout register
            RTOR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Receiver timeout value
                RTO: u24 = 0x0,
                ///  Block Length
                BLEN: u8 = 0x0,
            }),
            ///  Request register
            RQR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Auto baud rate request
                ABRRQ: u1 = 0x0,
                ///  Send break request
                SBKRQ: u1 = 0x0,
                ///  Mute mode request
                MMRQ: u1 = 0x0,
                ///  Receive data flush request
                RXFRQ: u1 = 0x0,
                ///  Transmit data flush request
                TXFRQ: u1 = 0x0,
                padding: u27 = 0x0,
            }),
            ///  Interrupt & status register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  PE
                PE: u1 = 0x0,
                ///  FE
                FE: u1 = 0x0,
                ///  NF
                NF: u1 = 0x0,
                ///  ORE
                ORE: u1 = 0x0,
                ///  IDLE
                IDLE: u1 = 0x0,
                ///  RXNE
                RXNE: u1 = 0x0,
                ///  TC
                TC: u1 = 0x0,
                ///  TXE
                TXE: u1 = 0x0,
                ///  LBDF
                LBDF: u1 = 0x0,
                ///  CTSIF
                CTSIF: u1 = 0x0,
                ///  CTS
                CTS: u1 = 0x0,
                ///  RTOF
                RTOF: u1 = 0x0,
                ///  EOBF
                EOBF: u1 = 0x0,
                ///  UDR
                UDR: u1 = 0x0,
                ///  ABRE
                ABRE: u1 = 0x0,
                ///  ABRF
                ABRF: u1 = 0x0,
                ///  BUSY
                BUSY: u1 = 0x0,
                ///  CMF
                CMF: u1 = 0x0,
                ///  SBKF
                SBKF: u1 = 0x0,
                ///  RWU
                RWU: u1 = 0x0,
                ///  WUF
                WUF: u1 = 0x0,
                ///  TEACK
                TEACK: u1 = 0x0,
                ///  REACK
                REACK: u1 = 0x0,
                ///  TXFE
                TXFE: u1 = 0x0,
                ///  RXFF
                RXFF: u1 = 0x0,
                ///  TCBGT
                TCBGT: u1 = 0x0,
                ///  RXFT
                RXFT: u1 = 0x0,
                ///  TXFT
                TXFT: u1 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  Interrupt flag clear register
            ICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Parity error clear flag
                PECF: u1 = 0x0,
                ///  Framing error clear flag
                FECF: u1 = 0x0,
                ///  Noise detected clear flag
                NCF: u1 = 0x0,
                ///  Overrun error clear flag
                ORECF: u1 = 0x0,
                ///  Idle line detected clear flag
                IDLECF: u1 = 0x0,
                ///  TXFECF
                TXFECF: u1 = 0x0,
                ///  Transmission complete clear flag
                TCCF: u1 = 0x0,
                ///  TCBGTCF
                TCBGTCF: u1 = 0x0,
                ///  LIN break detection clear flag
                LBDCF: u1 = 0x0,
                ///  CTS clear flag
                CTSCF: u1 = 0x0,
                reserved11: u1 = 0x0,
                ///  Receiver timeout clear flag
                RTOCF: u1 = 0x0,
                ///  End of block clear flag
                EOBCF: u1 = 0x0,
                ///  UDRCF
                UDRCF: u1 = 0x0,
                reserved17: u3 = 0x0,
                ///  Character match clear flag
                CMCF: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Wakeup from Stop mode clear flag
                WUCF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  Receive data register
            RDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Receive data value
                RDR: u9 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  Transmit data register
            TDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Transmit data value
                TDR: u9 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  USART prescaler register
            PRESC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  PRESCALER
                PRESCALER: u4 = 0x0,
                padding: u28 = 0x0,
            }),
        };

        ///  Tamper and backup registers
        pub const TAMP = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF0000
                ///  TAMP1E
                TAMP1E: u1 = 0x0,
                ///  TAMP2E
                TAMP2E: u1 = 0x0,
                ///  TAMP2E
                TAMP3E: u1 = 0x0,
                reserved18: u15 = 0x6000,
                ///  ITAMP3E
                ITAMP3E: u1 = 0x1,
                ///  ITAMP4E
                ITAMP4E: u1 = 0x1,
                ///  ITAMP5E
                ITAMP5E: u1 = 0x1,
                ///  ITAMP6E
                ITAMP6E: u1 = 0x1,
                padding: u10 = 0x3FF,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TAMP1NOER
                TAMP1NOER: u1 = 0x0,
                ///  TAMP2NOER
                TAMP2NOER: u1 = 0x0,
                ///  TAMP3NOER
                TAMP3NOER: u1 = 0x0,
                reserved16: u13 = 0x0,
                ///  TAMP1MSK
                TAMP1MSK: u1 = 0x0,
                ///  TAMP2MSK
                TAMP2MSK: u1 = 0x0,
                ///  TAMP3MSK
                TAMP3MSK: u1 = 0x0,
                reserved24: u5 = 0x0,
                ///  TAMP1TRG
                TAMP1TRG: u1 = 0x0,
                ///  TAMP2TRG
                TAMP2TRG: u1 = 0x0,
                ///  TAMP3TRG
                TAMP3TRG: u1 = 0x0,
                padding: u5 = 0x0,
            }),
            reserved12: [4]u8,
            ///  TAMP filter control register
            FLTCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TAMPFREQ
                TAMPFREQ: u3 = 0x0,
                ///  TAMPFLT
                TAMPFLT: u2 = 0x0,
                ///  TAMPPRCH
                TAMPPRCH: u2 = 0x0,
                ///  TAMPPUDIS
                TAMPPUDIS: u1 = 0x0,
                padding: u24 = 0x0,
            }),
            reserved44: [28]u8,
            ///  TAMP interrupt enable register
            IER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TAMP1IE
                TAMP1IE: u1 = 0x0,
                ///  TAMP2IE
                TAMP2IE: u1 = 0x0,
                ///  TAMP3IE
                TAMP3IE: u1 = 0x0,
                reserved18: u15 = 0x0,
                ///  ITAMP3IE
                ITAMP3IE: u1 = 0x0,
                ///  ITAMP4IE
                ITAMP4IE: u1 = 0x0,
                ///  ITAMP5IE
                ITAMP5IE: u1 = 0x0,
                ///  ITAMP6IE
                ITAMP6IE: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  TAMP status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TAMP1F
                TAMP1F: u1 = 0x0,
                ///  TAMP2F
                TAMP2F: u1 = 0x0,
                ///  TAMP3F
                TAMP3F: u1 = 0x0,
                reserved18: u15 = 0x0,
                ///  ITAMP3F
                ITAMP3F: u1 = 0x0,
                ///  ITAMP4F
                ITAMP4F: u1 = 0x0,
                ///  ITAMP5F
                ITAMP5F: u1 = 0x0,
                ///  ITAMP6F
                ITAMP6F: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  TAMP masked interrupt status register
            MISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TAMP1MF:
                TAMP1MF: u1 = 0x0,
                ///  TAMP2MF
                TAMP2MF: u1 = 0x0,
                ///  TAMP3MF
                TAMP3MF: u1 = 0x0,
                reserved18: u15 = 0x0,
                ///  ITAMP3MF
                ITAMP3MF: u1 = 0x0,
                ///  ITAMP4MF
                ITAMP4MF: u1 = 0x0,
                ///  ITAMP5MF
                ITAMP5MF: u1 = 0x0,
                ///  ITAMP6MF
                ITAMP6MF: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            reserved60: [4]u8,
            ///  TAMP status clear register
            SCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CTAMP1F
                CTAMP1F: u1 = 0x0,
                ///  CTAMP2F
                CTAMP2F: u1 = 0x0,
                ///  CTAMP3F
                CTAMP3F: u1 = 0x0,
                reserved18: u15 = 0x0,
                ///  CITAMP3F
                CITAMP3F: u1 = 0x0,
                ///  CITAMP4F
                CITAMP4F: u1 = 0x0,
                ///  CITAMP5F
                CITAMP5F: u1 = 0x0,
                ///  CITAMP6F
                CITAMP6F: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            reserved256: [192]u8,
            ///  TAMP backup register
            BKP0R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP3R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP4R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP5R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP6R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP7R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP8R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP9R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP10R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP11R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP12R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP13R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP14R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP15R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP16R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP17R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP18R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP19R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP20R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP21R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP22R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP23R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP24R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP25R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP26R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP27R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP28R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP29R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP30R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
            ///  TAMP backup register
            BKP31R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BKP
                BKP: u32 = 0x0,
            }),
        };

        ///  Serial audio interface
        pub const SAI = extern struct {
            reserved4: [4]u8,
            ///  AConfiguration register 1
            ACR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x40
                ///  Audio block mode
                MODE: u2 = 0x0,
                ///  Protocol configuration
                PRTCFG: u2 = 0x0,
                reserved5: u1 = 0x0,
                ///  Data size
                DS: u3 = 0x2,
                ///  Least significant bit first
                LSBFIRST: u1 = 0x0,
                ///  Clock strobing edge
                CKSTR: u1 = 0x0,
                ///  Synchronization enable
                SYNCEN: u2 = 0x0,
                ///  Mono mode
                MONO: u1 = 0x0,
                ///  Output drive
                OutDri: u1 = 0x0,
                reserved16: u2 = 0x0,
                ///  Audio block A enable
                SAIAEN: u1 = 0x0,
                ///  DMA enable
                DMAEN: u1 = 0x0,
                reserved19: u1 = 0x0,
                ///  No divider
                NODIV: u1 = 0x0,
                ///  Master clock divider
                MCJDIV: u6 = 0x0,
                ///  OSR
                OSR: u1 = 0x0,
                ///  MCKEN
                MCKEN: u1 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  AConfiguration register 2
            ACR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  FIFO threshold
                FTH: u3 = 0x0,
                ///  FIFO flush
                FFLUS: u1 = 0x0,
                ///  Tristate management on data line
                TRIS: u1 = 0x0,
                ///  Mute
                MUTE: u1 = 0x0,
                ///  Mute value
                MUTEVAL: u1 = 0x0,
                ///  Mute counter
                MUTECN: u6 = 0x0,
                ///  Complement bit
                CPL: u1 = 0x0,
                ///  Companding mode
                COMP: u2 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  AFRCR
            AFRCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x7
                ///  Frame length
                FRL: u8 = 0x7,
                ///  Frame synchronization active level length
                FSALL: u7 = 0x0,
                reserved16: u1 = 0x0,
                ///  Frame synchronization definition
                FSDEF: u1 = 0x0,
                ///  Frame synchronization polarity
                FSPOL: u1 = 0x0,
                ///  Frame synchronization offset
                FSOFF: u1 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  ASlot register
            ASLOTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  First bit offset
                FBOFF: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  Slot size
                SLOTSZ: u2 = 0x0,
                ///  Number of slots in an audio frame
                NBSLOT: u4 = 0x0,
                reserved16: u4 = 0x0,
                ///  Slot enable
                SLOTEN: u16 = 0x0,
            }),
            ///  AInterrupt mask register2
            AIM: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Overrun/underrun interrupt enable
                OVRUDRIE: u1 = 0x0,
                ///  Mute detection interrupt enable
                MUTEDET: u1 = 0x0,
                ///  Wrong clock configuration interrupt enable
                WCKCFG: u1 = 0x0,
                ///  FIFO request interrupt enable
                FREQIE: u1 = 0x0,
                ///  Codec not ready interrupt enable
                CNRDYIE: u1 = 0x0,
                ///  Anticipated frame synchronization detection interrupt enable
                AFSDETIE: u1 = 0x0,
                ///  Late frame synchronization detection interrupt enable
                LFSDET: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  AStatus register
            ASR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Overrun / underrun
                OVRUDR: u1 = 0x0,
                ///  Mute detection
                MUTEDET: u1 = 0x0,
                ///  Wrong clock configuration flag. This bit is read only
                WCKCFG: u1 = 0x0,
                ///  FIFO request
                FREQ: u1 = 0x0,
                ///  Codec not ready
                CNRDY: u1 = 0x0,
                ///  Anticipated frame synchronization detection
                AFSDET: u1 = 0x0,
                ///  Late frame synchronization detection
                LFSDET: u1 = 0x0,
                reserved16: u9 = 0x0,
                ///  FIFO level threshold
                FLVL: u3 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  AClear flag register
            ACLRFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Clear overrun / underrun
                OVRUDR: u1 = 0x0,
                ///  Mute detection flag
                MUTEDET: u1 = 0x0,
                ///  Clear wrong clock configuration flag
                WCKCFG: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  Clear codec not ready flag
                CNRDY: u1 = 0x0,
                ///  Clear anticipated frame synchronization detection flag
                CAFSDET: u1 = 0x0,
                ///  Clear late frame synchronization detection flag
                LFSDET: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  AData register
            ADR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Data
                DATA: u32 = 0x0,
            }),
            ///  BConfiguration register 1
            BCR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x40
                ///  Audio block mode
                MODE: u2 = 0x0,
                ///  Protocol configuration
                PRTCFG: u2 = 0x0,
                reserved5: u1 = 0x0,
                ///  Data size
                DS: u3 = 0x2,
                ///  Least significant bit first
                LSBFIRST: u1 = 0x0,
                ///  Clock strobing edge
                CKSTR: u1 = 0x0,
                ///  Synchronization enable
                SYNCEN: u2 = 0x0,
                ///  Mono mode
                MONO: u1 = 0x0,
                ///  Output drive
                OutDri: u1 = 0x0,
                reserved16: u2 = 0x0,
                ///  Audio block B enable
                SAIBEN: u1 = 0x0,
                ///  DMA enable
                DMAEN: u1 = 0x0,
                reserved19: u1 = 0x0,
                ///  No divider
                NODIV: u1 = 0x0,
                ///  Master clock divider
                MCJDIV: u6 = 0x0,
                ///  OSR
                OSR: u1 = 0x0,
                ///  MCKEN
                MCKEN: u1 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  BConfiguration register 2
            BCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  FIFO threshold
                FTH: u3 = 0x0,
                ///  FIFO flush
                FFLUS: u1 = 0x0,
                ///  Tristate management on data line
                TRIS: u1 = 0x0,
                ///  Mute
                MUTE: u1 = 0x0,
                ///  Mute value
                MUTEVAL: u1 = 0x0,
                ///  Mute counter
                MUTECN: u6 = 0x0,
                ///  Complement bit
                CPL: u1 = 0x0,
                ///  Companding mode
                COMP: u2 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  BFRCR
            BFRCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x7
                ///  Frame length
                FRL: u8 = 0x7,
                ///  Frame synchronization active level length
                FSALL: u7 = 0x0,
                reserved16: u1 = 0x0,
                ///  Frame synchronization definition
                FSDEF: u1 = 0x0,
                ///  Frame synchronization polarity
                FSPOL: u1 = 0x0,
                ///  Frame synchronization offset
                FSOFF: u1 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  BSlot register
            BSLOTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  First bit offset
                FBOFF: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  Slot size
                SLOTSZ: u2 = 0x0,
                ///  Number of slots in an audio frame
                NBSLOT: u4 = 0x0,
                reserved16: u4 = 0x0,
                ///  Slot enable
                SLOTEN: u16 = 0x0,
            }),
            ///  BInterrupt mask register2
            BIM: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Overrun/underrun interrupt enable
                OVRUDRIE: u1 = 0x0,
                ///  Mute detection interrupt enable
                MUTEDET: u1 = 0x0,
                ///  Wrong clock configuration interrupt enable
                WCKCFG: u1 = 0x0,
                ///  FIFO request interrupt enable
                FREQIE: u1 = 0x0,
                ///  Codec not ready interrupt enable
                CNRDYIE: u1 = 0x0,
                ///  Anticipated frame synchronization detection interrupt enable
                AFSDETIE: u1 = 0x0,
                ///  Late frame synchronization detection interrupt enable
                LFSDETIE: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  BStatus register
            BSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Overrun / underrun
                OVRUDR: u1 = 0x0,
                ///  Mute detection
                MUTEDET: u1 = 0x0,
                ///  Wrong clock configuration flag
                WCKCFG: u1 = 0x0,
                ///  FIFO request
                FREQ: u1 = 0x0,
                ///  Codec not ready
                CNRDY: u1 = 0x0,
                ///  Anticipated frame synchronization detection
                AFSDET: u1 = 0x0,
                ///  Late frame synchronization detection
                LFSDET: u1 = 0x0,
                reserved16: u9 = 0x0,
                ///  FIFO level threshold
                FLVL: u3 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  BClear flag register
            BCLRFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Clear overrun / underrun
                OVRUDR: u1 = 0x0,
                ///  Mute detection flag
                MUTEDET: u1 = 0x0,
                ///  Clear wrong clock configuration flag
                WCKCFG: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  Clear codec not ready flag
                CNRDY: u1 = 0x0,
                ///  Clear anticipated frame synchronization detection flag
                CAFSDET: u1 = 0x0,
                ///  Clear late frame synchronization detection flag
                LFSDET: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  BData register
            BDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Data
                DATA: u32 = 0x0,
            }),
            ///  PDM control register
            PDMCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  PDMEN
                PDMEN: u1 = 0x0,
                reserved4: u3 = 0x0,
                ///  MICNBR
                MICNBR: u2 = 0x0,
                reserved8: u2 = 0x0,
                ///  CKEN1
                CKEN1: u1 = 0x0,
                ///  CKEN2
                CKEN2: u1 = 0x0,
                ///  CKEN3
                CKEN3: u1 = 0x0,
                ///  CKEN4
                CKEN4: u1 = 0x0,
                padding: u20 = 0x0,
            }),
            ///  PDM delay register
            PDMDLY: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DLYM1L
                DLYM1L: u3 = 0x0,
                reserved4: u1 = 0x0,
                ///  DLYM1R
                DLYM1R: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  DLYM2L
                DLYM2L: u3 = 0x0,
                reserved12: u1 = 0x0,
                ///  DLYM2R
                DLYM2R: u3 = 0x0,
                reserved16: u1 = 0x0,
                ///  DLYM3L
                DLYM3L: u3 = 0x0,
                reserved20: u1 = 0x0,
                ///  DLYM3R
                DLYM3R: u3 = 0x0,
                reserved24: u1 = 0x0,
                ///  DLYM4L
                DLYM4L: u3 = 0x0,
                reserved28: u1 = 0x0,
                ///  DLYM4R
                DLYM4R: u3 = 0x0,
                padding: u1 = 0x0,
            }),
        };

        ///  Universal synchronous asynchronous receiver transmitter
        pub const UART4 = extern struct {
            ///  Control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  USART enable
                UE: u1 = 0x0,
                ///  USART enable in Stop mode
                UESM: u1 = 0x0,
                ///  Receiver enable
                RE: u1 = 0x0,
                ///  Transmitter enable
                TE: u1 = 0x0,
                ///  IDLE interrupt enable
                IDLEIE: u1 = 0x0,
                ///  RXNE interrupt enable
                RXNEIE: u1 = 0x0,
                ///  Transmission complete interrupt enable
                TCIE: u1 = 0x0,
                ///  interrupt enable
                TXEIE: u1 = 0x0,
                ///  PE interrupt enable
                PEIE: u1 = 0x0,
                ///  Parity selection
                PS: u1 = 0x0,
                ///  Parity control enable
                PCE: u1 = 0x0,
                ///  Receiver wakeup method
                WAKE: u1 = 0x0,
                ///  Word length
                M0: u1 = 0x0,
                ///  Mute mode enable
                MME: u1 = 0x0,
                ///  Character match interrupt enable
                CMIE: u1 = 0x0,
                ///  Oversampling mode
                OVER8: u1 = 0x0,
                ///  DEDT0
                DEDT0: u1 = 0x0,
                ///  DEDT1
                DEDT1: u1 = 0x0,
                ///  DEDT2
                DEDT2: u1 = 0x0,
                ///  DEDT3
                DEDT3: u1 = 0x0,
                ///  Driver Enable de-assertion time
                DEDT4: u1 = 0x0,
                ///  DEAT0
                DEAT0: u1 = 0x0,
                ///  DEAT1
                DEAT1: u1 = 0x0,
                ///  DEAT2
                DEAT2: u1 = 0x0,
                ///  DEAT3
                DEAT3: u1 = 0x0,
                ///  Driver Enable assertion time
                DEAT4: u1 = 0x0,
                ///  Receiver timeout interrupt enable
                RTOIE: u1 = 0x0,
                ///  End of Block interrupt enable
                EOBIE: u1 = 0x0,
                ///  M1
                M1: u1 = 0x0,
                ///  FIFOEN
                FIFOEN: u1 = 0x0,
                ///  TXFEIE
                TXFEIE: u1 = 0x0,
                ///  RXFFIE
                RXFFIE: u1 = 0x0,
            }),
            ///  Control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SLVEN
                SLVEN: u1 = 0x0,
                reserved3: u2 = 0x0,
                ///  DIS_NSS
                DIS_NSS: u1 = 0x0,
                ///  7-bit Address Detection/4-bit Address Detection
                ADDM7: u1 = 0x0,
                ///  LIN break detection length
                LBDL: u1 = 0x0,
                ///  LIN break detection interrupt enable
                LBDIE: u1 = 0x0,
                reserved8: u1 = 0x0,
                ///  Last bit clock pulse
                LBCL: u1 = 0x0,
                ///  Clock phase
                CPHA: u1 = 0x0,
                ///  Clock polarity
                CPOL: u1 = 0x0,
                ///  Clock enable
                CLKEN: u1 = 0x0,
                ///  STOP bits
                STOP: u2 = 0x0,
                ///  LIN mode enable
                LINEN: u1 = 0x0,
                ///  Swap TX/RX pins
                SWAP: u1 = 0x0,
                ///  RX pin active level inversion
                RXINV: u1 = 0x0,
                ///  TX pin active level inversion
                TXINV: u1 = 0x0,
                ///  Binary data inversion
                TAINV: u1 = 0x0,
                ///  Most significant bit first
                MSBFIRST: u1 = 0x0,
                ///  Auto baud rate enable
                ABREN: u1 = 0x0,
                ///  ABRMOD0
                ABRMOD0: u1 = 0x0,
                ///  Auto baud rate mode
                ABRMOD1: u1 = 0x0,
                ///  Receiver timeout enable
                RTOEN: u1 = 0x0,
                ///  Address of the USART node
                ADD0_3: u4 = 0x0,
                ///  Address of the USART node
                ADD4_7: u4 = 0x0,
            }),
            ///  Control register 3
            CR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Error interrupt enable
                EIE: u1 = 0x0,
                ///  Ir mode enable
                IREN: u1 = 0x0,
                ///  Ir low-power
                IRLP: u1 = 0x0,
                ///  Half-duplex selection
                HDSEL: u1 = 0x0,
                ///  Smartcard NACK enable
                NACK: u1 = 0x0,
                ///  Smartcard mode enable
                SCEN: u1 = 0x0,
                ///  DMA enable receiver
                DMAR: u1 = 0x0,
                ///  DMA enable transmitter
                DMAT: u1 = 0x0,
                ///  RTS enable
                RTSE: u1 = 0x0,
                ///  CTS enable
                CTSE: u1 = 0x0,
                ///  CTS interrupt enable
                CTSIE: u1 = 0x0,
                ///  One sample bit method enable
                ONEBIT: u1 = 0x0,
                ///  Overrun Disable
                OVRDIS: u1 = 0x0,
                ///  DMA Disable on Reception Error
                DDRE: u1 = 0x0,
                ///  Driver enable mode
                DEM: u1 = 0x0,
                ///  Driver enable polarity selection
                DEP: u1 = 0x0,
                reserved17: u1 = 0x0,
                ///  Smartcard auto-retry count
                SCARCNT: u3 = 0x0,
                ///  Wakeup from Stop mode interrupt flag selection
                WUS: u2 = 0x0,
                ///  Wakeup from Stop mode interrupt enable
                WUFIE: u1 = 0x0,
                ///  TXFTIE
                TXFTIE: u1 = 0x0,
                ///  TCBGTIE
                TCBGTIE: u1 = 0x0,
                ///  RXFTCFG
                RXFTCFG: u3 = 0x0,
                ///  RXFTIE
                RXFTIE: u1 = 0x0,
                ///  TXFTCFG
                TXFTCFG: u3 = 0x0,
            }),
            ///  Baud rate register
            BRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DIV_Fraction
                DIV_Fraction: u4 = 0x0,
                ///  DIV_Mantissa
                DIV_Mantissa: u12 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Guard time and prescaler register
            GTPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Prescaler value
                PSC: u8 = 0x0,
                ///  Guard time value
                GT: u8 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Receiver timeout register
            RTOR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Receiver timeout value
                RTO: u24 = 0x0,
                ///  Block Length
                BLEN: u8 = 0x0,
            }),
            ///  Request register
            RQR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Auto baud rate request
                ABRRQ: u1 = 0x0,
                ///  Send break request
                SBKRQ: u1 = 0x0,
                ///  Mute mode request
                MMRQ: u1 = 0x0,
                ///  Receive data flush request
                RXFRQ: u1 = 0x0,
                ///  Transmit data flush request
                TXFRQ: u1 = 0x0,
                padding: u27 = 0x0,
            }),
            ///  Interrupt & status register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0xC0
                ///  PE
                PE: u1 = 0x0,
                ///  FE
                FE: u1 = 0x0,
                ///  NF
                NF: u1 = 0x0,
                ///  ORE
                ORE: u1 = 0x0,
                ///  IDLE
                IDLE: u1 = 0x0,
                ///  RXNE
                RXNE: u1 = 0x0,
                ///  TC
                TC: u1 = 0x1,
                ///  TXE
                TXE: u1 = 0x1,
                ///  LBDF
                LBDF: u1 = 0x0,
                ///  CTSIF
                CTSIF: u1 = 0x0,
                ///  CTS
                CTS: u1 = 0x0,
                ///  RTOF
                RTOF: u1 = 0x0,
                ///  EOBF
                EOBF: u1 = 0x0,
                ///  UDR
                UDR: u1 = 0x0,
                ///  ABRE
                ABRE: u1 = 0x0,
                ///  ABRF
                ABRF: u1 = 0x0,
                ///  BUSY
                BUSY: u1 = 0x0,
                ///  CMF
                CMF: u1 = 0x0,
                ///  SBKF
                SBKF: u1 = 0x0,
                ///  RWU
                RWU: u1 = 0x0,
                ///  WUF
                WUF: u1 = 0x0,
                ///  TEACK
                TEACK: u1 = 0x0,
                ///  REACK
                REACK: u1 = 0x0,
                ///  TXFE
                TXFE: u1 = 0x0,
                ///  RXFF
                RXFF: u1 = 0x0,
                ///  TCBGT
                TCBGT: u1 = 0x0,
                ///  RXFT
                RXFT: u1 = 0x0,
                ///  TXFT
                TXFT: u1 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  Interrupt flag clear register
            ICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Parity error clear flag
                PECF: u1 = 0x0,
                ///  Framing error clear flag
                FECF: u1 = 0x0,
                ///  Noise detected clear flag
                NCF: u1 = 0x0,
                ///  Overrun error clear flag
                ORECF: u1 = 0x0,
                ///  Idle line detected clear flag
                IDLECF: u1 = 0x0,
                ///  TXFECF
                TXFECF: u1 = 0x0,
                ///  Transmission complete clear flag
                TCCF: u1 = 0x0,
                ///  TCBGTCF
                TCBGTCF: u1 = 0x0,
                ///  LIN break detection clear flag
                LBDCF: u1 = 0x0,
                ///  CTS clear flag
                CTSCF: u1 = 0x0,
                reserved11: u1 = 0x0,
                ///  Receiver timeout clear flag
                RTOCF: u1 = 0x0,
                ///  End of block clear flag
                EOBCF: u1 = 0x0,
                ///  UDRCF
                UDRCF: u1 = 0x0,
                reserved17: u3 = 0x0,
                ///  Character match clear flag
                CMCF: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Wakeup from Stop mode clear flag
                WUCF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  Receive data register
            RDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Receive data value
                RDR: u9 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  Transmit data register
            TDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Transmit data value
                TDR: u9 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  USART prescaler register
            PRESC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  PRESCALER
                PRESCALER: u4 = 0x0,
                padding: u28 = 0x0,
            }),
        };

        ///  CORDIC Co-processor
        pub const CORDIC = extern struct {
            ///  CORDIC Control Status register
            CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  FUNC
                FUNC: u4 = 0x0,
                ///  PRECISION
                PRECISION: u4 = 0x0,
                ///  SCALE
                SCALE: u3 = 0x0,
                reserved16: u5 = 0x0,
                ///  IEN
                IEN: u1 = 0x0,
                ///  DMAREN
                DMAREN: u1 = 0x0,
                ///  DMAWEN
                DMAWEN: u1 = 0x0,
                ///  NRES
                NRES: u1 = 0x0,
                ///  NARGS
                NARGS: u1 = 0x0,
                ///  RESSIZE
                RESSIZE: u1 = 0x0,
                ///  ARGSIZE
                ARGSIZE: u1 = 0x0,
                reserved31: u8 = 0x0,
                ///  RRDY
                RRDY: u1 = 0x0,
            }),
            ///  FMAC Write Data register
            WDATA: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ARG
                ARG: u32 = 0x0,
            }),
            ///  FMAC Read Data register
            RDATA: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RES
                RES: u32 = 0x0,
            }),
        };

        ///  Universal synchronous asynchronous receiver transmitter
        pub const LPUART1 = extern struct {
            ///  Control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  USART enable
                UE: u1 = 0x0,
                ///  USART enable in Stop mode
                UESM: u1 = 0x0,
                ///  Receiver enable
                RE: u1 = 0x0,
                ///  Transmitter enable
                TE: u1 = 0x0,
                ///  IDLE interrupt enable
                IDLEIE: u1 = 0x0,
                ///  RXNE interrupt enable
                RXNEIE: u1 = 0x0,
                ///  Transmission complete interrupt enable
                TCIE: u1 = 0x0,
                ///  interrupt enable
                TXEIE: u1 = 0x0,
                ///  PE interrupt enable
                PEIE: u1 = 0x0,
                ///  Parity selection
                PS: u1 = 0x0,
                ///  Parity control enable
                PCE: u1 = 0x0,
                ///  Receiver wakeup method
                WAKE: u1 = 0x0,
                ///  Word length
                M0: u1 = 0x0,
                ///  Mute mode enable
                MME: u1 = 0x0,
                ///  Character match interrupt enable
                CMIE: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  DEDT0
                DEDT0: u1 = 0x0,
                ///  DEDT1
                DEDT1: u1 = 0x0,
                ///  DEDT2
                DEDT2: u1 = 0x0,
                ///  DEDT3
                DEDT3: u1 = 0x0,
                ///  Driver Enable de-assertion time
                DEDT4: u1 = 0x0,
                ///  DEAT0
                DEAT0: u1 = 0x0,
                ///  DEAT1
                DEAT1: u1 = 0x0,
                ///  DEAT2
                DEAT2: u1 = 0x0,
                ///  DEAT3
                DEAT3: u1 = 0x0,
                ///  Driver Enable assertion time
                DEAT4: u1 = 0x0,
                reserved28: u2 = 0x0,
                ///  Word length
                M1: u1 = 0x0,
                ///  FIFOEN
                FIFOEN: u1 = 0x0,
                ///  TXFEIE
                TXFEIE: u1 = 0x0,
                ///  RXFFIE
                RXFFIE: u1 = 0x0,
            }),
            ///  Control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved4: u4 = 0x0,
                ///  7-bit Address Detection/4-bit Address Detection
                ADDM7: u1 = 0x0,
                reserved12: u7 = 0x0,
                ///  STOP bits
                STOP: u2 = 0x0,
                reserved15: u1 = 0x0,
                ///  Swap TX/RX pins
                SWAP: u1 = 0x0,
                ///  RX pin active level inversion
                RXINV: u1 = 0x0,
                ///  TX pin active level inversion
                TXINV: u1 = 0x0,
                ///  Binary data inversion
                TAINV: u1 = 0x0,
                ///  Most significant bit first
                MSBFIRST: u1 = 0x0,
                reserved24: u4 = 0x0,
                ///  Address of the USART node
                ADD0_3: u4 = 0x0,
                ///  Address of the USART node
                ADD4_7: u4 = 0x0,
            }),
            ///  Control register 3
            CR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Error interrupt enable
                EIE: u1 = 0x0,
                reserved3: u2 = 0x0,
                ///  Half-duplex selection
                HDSEL: u1 = 0x0,
                reserved6: u2 = 0x0,
                ///  DMA enable receiver
                DMAR: u1 = 0x0,
                ///  DMA enable transmitter
                DMAT: u1 = 0x0,
                ///  RTS enable
                RTSE: u1 = 0x0,
                ///  CTS enable
                CTSE: u1 = 0x0,
                ///  CTS interrupt enable
                CTSIE: u1 = 0x0,
                reserved12: u1 = 0x0,
                ///  Overrun Disable
                OVRDIS: u1 = 0x0,
                ///  DMA Disable on Reception Error
                DDRE: u1 = 0x0,
                ///  Driver enable mode
                DEM: u1 = 0x0,
                ///  Driver enable polarity selection
                DEP: u1 = 0x0,
                reserved20: u4 = 0x0,
                ///  Wakeup from Stop mode interrupt flag selection
                WUS: u2 = 0x0,
                ///  Wakeup from Stop mode interrupt enable
                WUFIE: u1 = 0x0,
                ///  TXFTIE
                TXFTIE: u1 = 0x0,
                reserved25: u1 = 0x0,
                ///  RXFTCFG
                RXFTCFG: u3 = 0x0,
                ///  RXFTIE
                RXFTIE: u1 = 0x0,
                ///  TXFTCFG
                TXFTCFG: u3 = 0x0,
            }),
            ///  Baud rate register
            BRR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BRR
                BRR: u20 = 0x0,
                padding: u12 = 0x0,
            }),
            reserved24: [8]u8,
            ///  Request register
            RQR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Send break request
                SBKRQ: u1 = 0x0,
                ///  Mute mode request
                MMRQ: u1 = 0x0,
                ///  Receive data flush request
                RXFRQ: u1 = 0x0,
                ///  TXFRQ
                TXFRQ: u1 = 0x0,
                padding: u27 = 0x0,
            }),
            ///  Interrupt & status register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0xC0
                ///  PE
                PE: u1 = 0x0,
                ///  FE
                FE: u1 = 0x0,
                ///  NF
                NF: u1 = 0x0,
                ///  ORE
                ORE: u1 = 0x0,
                ///  IDLE
                IDLE: u1 = 0x0,
                ///  RXNE
                RXNE: u1 = 0x0,
                ///  TC
                TC: u1 = 0x1,
                ///  TXE
                TXE: u1 = 0x1,
                reserved9: u1 = 0x0,
                ///  CTSIF
                CTSIF: u1 = 0x0,
                ///  CTS
                CTS: u1 = 0x0,
                reserved16: u5 = 0x0,
                ///  BUSY
                BUSY: u1 = 0x0,
                ///  CMF
                CMF: u1 = 0x0,
                ///  SBKF
                SBKF: u1 = 0x0,
                ///  RWU
                RWU: u1 = 0x0,
                ///  WUF
                WUF: u1 = 0x0,
                ///  TEACK
                TEACK: u1 = 0x0,
                ///  REACK
                REACK: u1 = 0x0,
                ///  TXFE
                TXFE: u1 = 0x0,
                ///  RXFF
                RXFF: u1 = 0x0,
                reserved26: u1 = 0x0,
                ///  RXFT
                RXFT: u1 = 0x0,
                ///  TXFT
                TXFT: u1 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  Interrupt flag clear register
            ICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Parity error clear flag
                PECF: u1 = 0x0,
                ///  Framing error clear flag
                FECF: u1 = 0x0,
                ///  Noise detected clear flag
                NCF: u1 = 0x0,
                ///  Overrun error clear flag
                ORECF: u1 = 0x0,
                ///  Idle line detected clear flag
                IDLECF: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Transmission complete clear flag
                TCCF: u1 = 0x0,
                reserved9: u2 = 0x0,
                ///  CTS clear flag
                CTSCF: u1 = 0x0,
                reserved17: u7 = 0x0,
                ///  Character match clear flag
                CMCF: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Wakeup from Stop mode clear flag
                WUCF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  Receive data register
            RDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Receive data value
                RDR: u9 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  Transmit data register
            TDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Transmit data value
                TDR: u9 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  Prescaler register
            PRESC: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  PRESCALER
                PRESCALER: u4 = 0x0,
                padding: u28 = 0x0,
            }),
        };

        ///  Serial peripheral interface/Inter-IC sound
        pub const SPI1 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Clock phase
                CPHA: u1 = 0x0,
                ///  Clock polarity
                CPOL: u1 = 0x0,
                ///  Master selection
                MSTR: u1 = 0x0,
                ///  Baud rate control
                BR: u3 = 0x0,
                ///  SPI enable
                SPE: u1 = 0x0,
                ///  Frame format
                LSBFIRST: u1 = 0x0,
                ///  Internal slave select
                SSI: u1 = 0x0,
                ///  Software slave management
                SSM: u1 = 0x0,
                ///  Receive only
                RXONLY: u1 = 0x0,
                ///  Data frame format
                DFF: u1 = 0x0,
                ///  CRC transfer next
                CRCNEXT: u1 = 0x0,
                ///  Hardware CRC calculation enable
                CRCEN: u1 = 0x0,
                ///  Output enable in bidirectional mode
                BIDIOE: u1 = 0x0,
                ///  Bidirectional data mode enable
                BIDIMODE: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x700
                ///  Rx buffer DMA enable
                RXDMAEN: u1 = 0x0,
                ///  Tx buffer DMA enable
                TXDMAEN: u1 = 0x0,
                ///  SS output enable
                SSOE: u1 = 0x0,
                ///  NSS pulse management
                NSSP: u1 = 0x0,
                ///  Frame format
                FRF: u1 = 0x0,
                ///  Error interrupt enable
                ERRIE: u1 = 0x0,
                ///  RX buffer not empty interrupt enable
                RXNEIE: u1 = 0x0,
                ///  Tx buffer empty interrupt enable
                TXEIE: u1 = 0x0,
                ///  Data size
                DS: u4 = 0x7,
                ///  FIFO reception threshold
                FRXTH: u1 = 0x0,
                ///  Last DMA transfer for reception
                LDMA_RX: u1 = 0x0,
                ///  Last DMA transfer for transmission
                LDMA_TX: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x2
                ///  Receive buffer not empty
                RXNE: u1 = 0x0,
                ///  Transmit buffer empty
                TXE: u1 = 0x1,
                reserved4: u2 = 0x0,
                ///  CRC error flag
                CRCERR: u1 = 0x0,
                ///  Mode fault
                MODF: u1 = 0x0,
                ///  Overrun flag
                OVR: u1 = 0x0,
                ///  Busy flag
                BSY: u1 = 0x0,
                ///  TI frame format error
                TIFRFE: u1 = 0x0,
                ///  FIFO reception level
                FRLVL: u2 = 0x0,
                ///  FIFO transmission level
                FTLVL: u2 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  data register
            DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Data register
                DR: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  CRC polynomial register
            CRCPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x7
                ///  CRC polynomial register
                CRCPOLY: u16 = 0x7,
                padding: u16 = 0x0,
            }),
            ///  RX CRC register
            RXCRCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Rx CRC register
                RxCRC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  TX CRC register
            TXCRCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Tx CRC register
                TxCRC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  configuration register
            I2SCFGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CHLEN
                CHLEN: u1 = 0x0,
                ///  DATLEN
                DATLEN: u2 = 0x0,
                ///  CKPOL
                CKPOL: u1 = 0x0,
                ///  I2SSTD
                I2SSTD: u2 = 0x0,
                reserved7: u1 = 0x0,
                ///  PCMSYNC
                PCMSYNC: u1 = 0x0,
                ///  I2SCFG
                I2SCFG: u2 = 0x0,
                ///  I2SE
                I2SE: u1 = 0x0,
                ///  I2SMOD
                I2SMOD: u1 = 0x0,
                padding: u20 = 0x0,
            }),
            ///  prescaler register
            I2SPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x2
                ///  I2SDIV
                I2SDIV: u8 = 0x2,
                ///  ODD
                ODD: u1 = 0x0,
                ///  MCKOE
                MCKOE: u1 = 0x0,
                padding: u22 = 0x0,
            }),
        };

        ///  Serial peripheral interface/Inter-IC sound
        pub const SPI4 = extern struct {
            ///  control register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x700
                ///  Clock phase
                CPHA: u1 = 0x0,
                ///  Clock polarity
                CPOL: u1 = 0x0,
                ///  Master selection
                MSTR: u1 = 0x0,
                ///  Baud rate control
                BR: u3 = 0x0,
                ///  SPI enable
                SPE: u1 = 0x0,
                ///  Frame format
                LSBFIRST: u1 = 0x0,
                ///  Internal slave select
                SSI: u1 = 0x1,
                ///  Software slave management
                SSM: u1 = 0x1,
                ///  Receive only
                RXONLY: u1 = 0x1,
                ///  Data frame format
                DFF: u1 = 0x0,
                ///  CRC transfer next
                CRCNEXT: u1 = 0x0,
                ///  Hardware CRC calculation enable
                CRCEN: u1 = 0x0,
                ///  Output enable in bidirectional mode
                BIDIOE: u1 = 0x0,
                ///  Bidirectional data mode enable
                BIDIMODE: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  control register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Rx buffer DMA enable
                RXDMAEN: u1 = 0x0,
                ///  Tx buffer DMA enable
                TXDMAEN: u1 = 0x0,
                ///  SS output enable
                SSOE: u1 = 0x0,
                ///  NSS pulse management
                NSSP: u1 = 0x0,
                ///  Frame format
                FRF: u1 = 0x0,
                ///  Error interrupt enable
                ERRIE: u1 = 0x0,
                ///  RX buffer not empty interrupt enable
                RXNEIE: u1 = 0x0,
                ///  Tx buffer empty interrupt enable
                TXEIE: u1 = 0x0,
                ///  Data size
                DS: u4 = 0x0,
                ///  FIFO reception threshold
                FRXTH: u1 = 0x0,
                ///  Last DMA transfer for reception
                LDMA_RX: u1 = 0x0,
                ///  Last DMA transfer for transmission
                LDMA_TX: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x2
                ///  Receive buffer not empty
                RXNE: u1 = 0x0,
                ///  Transmit buffer empty
                TXE: u1 = 0x1,
                reserved4: u2 = 0x0,
                ///  CRC error flag
                CRCERR: u1 = 0x0,
                ///  Mode fault
                MODF: u1 = 0x0,
                ///  Overrun flag
                OVR: u1 = 0x0,
                ///  Busy flag
                BSY: u1 = 0x0,
                ///  TI frame format error
                TIFRFE: u1 = 0x0,
                ///  FIFO reception level
                FRLVL: u2 = 0x0,
                ///  FIFO transmission level
                FTLVL: u2 = 0x0,
                padding: u19 = 0x0,
            }),
            ///  data register
            DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Data register
                DR: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  CRC polynomial register
            CRCPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x7
                ///  CRC polynomial register
                CRCPOLY: u16 = 0x7,
                padding: u16 = 0x0,
            }),
            ///  RX CRC register
            RXCRCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Rx CRC register
                RxCRC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  TX CRC register
            TXCRCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Tx CRC register
                TxCRC: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  configuration register
            I2SCFGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CHLEN
                CHLEN: u1 = 0x0,
                ///  DATLEN
                DATLEN: u2 = 0x0,
                ///  CKPOL
                CKPOL: u1 = 0x0,
                ///  I2SSTD
                I2SSTD: u2 = 0x0,
                reserved7: u1 = 0x0,
                ///  PCMSYNC
                PCMSYNC: u1 = 0x0,
                ///  I2SCFG
                I2SCFG: u2 = 0x0,
                ///  I2SE
                I2SE: u1 = 0x0,
                ///  I2SMOD
                I2SMOD: u1 = 0x0,
                padding: u20 = 0x0,
            }),
            ///  prescaler register
            I2SPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x2
                ///  I2SDIV
                I2SDIV: u8 = 0x2,
                ///  ODD
                ODD: u1 = 0x0,
                ///  MCKOE
                MCKOE: u1 = 0x0,
                padding: u22 = 0x0,
            }),
        };

        ///  Filter Math Accelerator
        pub const FMAC = extern struct {
            ///  FMAC X1 Buffer Configuration register
            X1BUFCFG: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  X1_BASE
                X1_BASE: u8 = 0x0,
                ///  X1_BUF_SIZE
                X1_BUF_SIZE: u8 = 0x0,
                reserved24: u8 = 0x0,
                ///  FULL_WM
                FULL_WM: u2 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  FMAC X2 Buffer Configuration register
            X2BUFCFG: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  X1_BASE
                X2_BASE: u8 = 0x0,
                ///  X1_BUF_SIZE
                X2_BUF_SIZE: u8 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  FMAC Y Buffer Configuration register
            YBUFCFG: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  X1_BASE
                Y_BASE: u8 = 0x0,
                ///  X1_BUF_SIZE
                Y_BUF_SIZE: u8 = 0x0,
                reserved24: u8 = 0x0,
                ///  EMPTY_WM
                EMPTY_WM: u2 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  FMAC Parameter register
            PARAM: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  P
                P: u8 = 0x0,
                ///  Q
                Q: u8 = 0x0,
                ///  R
                R: u8 = 0x0,
                ///  FUNC
                FUNC: u7 = 0x0,
                ///  START
                START: u1 = 0x0,
            }),
            ///  FMAC Control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RIEN
                RIEN: u1 = 0x0,
                ///  WIEN
                WIEN: u1 = 0x0,
                ///  OVFLIEN
                OVFLIEN: u1 = 0x0,
                ///  UNFLIEN
                UNFLIEN: u1 = 0x0,
                ///  SATIEN
                SATIEN: u1 = 0x0,
                reserved8: u3 = 0x0,
                ///  DMAREN
                DMAREN: u1 = 0x0,
                ///  DMAWEN
                DMAWEN: u1 = 0x0,
                reserved15: u5 = 0x0,
                ///  CLIPEN
                CLIPEN: u1 = 0x0,
                ///  RESET
                RESET: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  FMAC Status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  YEMPTY
                YEMPTY: u1 = 0x0,
                ///  X1FULL
                X1FULL: u1 = 0x0,
                reserved8: u6 = 0x0,
                ///  OVFL
                OVFL: u1 = 0x0,
                ///  UNFL
                UNFL: u1 = 0x0,
                ///  SAT
                SAT: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  FMAC Write Data register
            WDATA: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  WDATA
                WDATA: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  FMAC Read Data register
            RDATA: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  RDATA
                RDATA: u16 = 0x0,
                padding: u16 = 0x0,
            }),
        };

        ///  Analog-to-Digital Converter
        pub const ADC1 = extern struct {
            ///  interrupt and status register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADRDY
                ADRDY: u1 = 0x0,
                ///  EOSMP
                EOSMP: u1 = 0x0,
                ///  EOC
                EOC: u1 = 0x0,
                ///  EOS
                EOS: u1 = 0x0,
                ///  OVR
                OVR: u1 = 0x0,
                ///  JEOC
                JEOC: u1 = 0x0,
                ///  JEOS
                JEOS: u1 = 0x0,
                ///  AWD1
                AWD1: u1 = 0x0,
                ///  AWD2
                AWD2: u1 = 0x0,
                ///  AWD3
                AWD3: u1 = 0x0,
                ///  JQOVF
                JQOVF: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  interrupt enable register
            IER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADRDYIE
                ADRDYIE: u1 = 0x0,
                ///  EOSMPIE
                EOSMPIE: u1 = 0x0,
                ///  EOCIE
                EOCIE: u1 = 0x0,
                ///  EOSIE
                EOSIE: u1 = 0x0,
                ///  OVRIE
                OVRIE: u1 = 0x0,
                ///  JEOCIE
                JEOCIE: u1 = 0x0,
                ///  JEOSIE
                JEOSIE: u1 = 0x0,
                ///  AWD1IE
                AWD1IE: u1 = 0x0,
                ///  AWD2IE
                AWD2IE: u1 = 0x0,
                ///  AWD3IE
                AWD3IE: u1 = 0x0,
                ///  JQOVFIE
                JQOVFIE: u1 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x20000000
                ///  ADEN
                ADEN: u1 = 0x0,
                ///  ADDIS
                ADDIS: u1 = 0x0,
                ///  ADSTART
                ADSTART: u1 = 0x0,
                ///  JADSTART
                JADSTART: u1 = 0x0,
                ///  ADSTP
                ADSTP: u1 = 0x0,
                ///  JADSTP
                JADSTP: u1 = 0x0,
                reserved28: u22 = 0x0,
                ///  ADVREGEN
                ADVREGEN: u1 = 0x0,
                ///  DEEPPWD
                DEEPPWD: u1 = 0x1,
                ///  ADCALDIF
                ADCALDIF: u1 = 0x0,
                ///  ADCAL
                ADCAL: u1 = 0x0,
            }),
            ///  configuration register
            CFGR: mmio.Mmio(packed struct(u32) { // reset_value: 0x80000000
                ///  DMAEN
                DMAEN: u1 = 0x0,
                ///  DMACFG
                DMACFG: u1 = 0x0,
                reserved3: u1 = 0x0,
                ///  RES
                RES: u2 = 0x0,
                ///  ALIGN_5
                ALIGN_5: u1 = 0x0,
                ///  EXTSEL
                EXTSEL: u4 = 0x0,
                ///  EXTEN
                EXTEN: u2 = 0x0,
                ///  OVRMOD
                OVRMOD: u1 = 0x0,
                ///  CONT
                CONT: u1 = 0x0,
                ///  AUTDLY
                AUTDLY: u1 = 0x0,
                ///  ALIGN
                ALIGN: u1 = 0x0,
                ///  DISCEN
                DISCEN: u1 = 0x0,
                ///  DISCNUM
                DISCNUM: u3 = 0x0,
                ///  JDISCEN
                JDISCEN: u1 = 0x0,
                ///  JQM
                JQM: u1 = 0x0,
                ///  AWD1SGL
                AWD1SGL: u1 = 0x0,
                ///  AWD1EN
                AWD1EN: u1 = 0x0,
                ///  JAWD1EN
                JAWD1EN: u1 = 0x0,
                ///  JAUTO
                JAUTO: u1 = 0x0,
                ///  AWDCH1CH
                AWDCH1CH: u5 = 0x0,
                ///  Injected Queue disable
                JQDIS: u1 = 0x1,
            }),
            ///  configuration register
            CFGR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMAEN
                ROVSE: u1 = 0x0,
                ///  DMACFG
                JOVSE: u1 = 0x0,
                ///  RES
                OVSR: u3 = 0x0,
                ///  ALIGN
                OVSS: u4 = 0x0,
                ///  Triggered Regular Oversampling
                TROVS: u1 = 0x0,
                ///  EXTEN
                ROVSM: u1 = 0x0,
                reserved16: u5 = 0x0,
                ///  GCOMP
                GCOMP: u1 = 0x0,
                reserved25: u8 = 0x0,
                ///  SWTRIG
                SWTRIG: u1 = 0x0,
                ///  BULB
                BULB: u1 = 0x0,
                ///  SMPTRIG
                SMPTRIG: u1 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  sample time register 1
            SMPR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SMP0
                SMP0: u3 = 0x0,
                ///  SMP1
                SMP1: u3 = 0x0,
                ///  SMP2
                SMP2: u3 = 0x0,
                ///  SMP3
                SMP3: u3 = 0x0,
                ///  SMP4
                SMP4: u3 = 0x0,
                ///  SMP5
                SMP5: u3 = 0x0,
                ///  SMP6
                SMP6: u3 = 0x0,
                ///  SMP7
                SMP7: u3 = 0x0,
                ///  SMP8
                SMP8: u3 = 0x0,
                ///  SMP9
                SMP9: u3 = 0x0,
                reserved31: u1 = 0x0,
                ///  Addition of one clock cycle to the sampling time
                SMPPLUS: u1 = 0x0,
            }),
            ///  sample time register 2
            SMPR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SMP10
                SMP10: u3 = 0x0,
                ///  SMP11
                SMP11: u3 = 0x0,
                ///  SMP12
                SMP12: u3 = 0x0,
                ///  SMP13
                SMP13: u3 = 0x0,
                ///  SMP14
                SMP14: u3 = 0x0,
                ///  SMP15
                SMP15: u3 = 0x0,
                ///  SMP16
                SMP16: u3 = 0x0,
                ///  SMP17
                SMP17: u3 = 0x0,
                ///  SMP18
                SMP18: u3 = 0x0,
                padding: u5 = 0x0,
            }),
            reserved32: [4]u8,
            ///  watchdog threshold register 1
            TR1: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFF0000
                ///  LT1
                LT1: u12 = 0x0,
                ///  AWDFILT
                AWDFILT: u3 = 0x0,
                reserved16: u1 = 0x0,
                ///  HT1
                HT1: u12 = 0xFFF,
                padding: u4 = 0x0,
            }),
            ///  watchdog threshold register
            TR2: mmio.Mmio(packed struct(u32) { // reset_value: 0xFF0000
                ///  LT2
                LT2: u8 = 0x0,
                reserved16: u8 = 0x0,
                ///  HT2
                HT2: u8 = 0xFF,
                padding: u8 = 0x0,
            }),
            ///  watchdog threshold register 3
            TR3: mmio.Mmio(packed struct(u32) { // reset_value: 0xFF0000
                ///  LT3
                LT3: u8 = 0x0,
                reserved16: u8 = 0x0,
                ///  HT3
                HT3: u8 = 0xFF,
                padding: u8 = 0x0,
            }),
            reserved48: [4]u8,
            ///  regular sequence register 1
            SQR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Regular channel sequence length
                L: u4 = 0x0,
                reserved6: u2 = 0x0,
                ///  SQ1
                SQ1: u5 = 0x0,
                reserved12: u1 = 0x0,
                ///  SQ2
                SQ2: u5 = 0x0,
                reserved18: u1 = 0x0,
                ///  SQ3
                SQ3: u5 = 0x0,
                reserved24: u1 = 0x0,
                ///  SQ4
                SQ4: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  regular sequence register 2
            SQR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SQ5
                SQ5: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  SQ6
                SQ6: u5 = 0x0,
                reserved12: u1 = 0x0,
                ///  SQ7
                SQ7: u5 = 0x0,
                reserved18: u1 = 0x0,
                ///  SQ8
                SQ8: u5 = 0x0,
                reserved24: u1 = 0x0,
                ///  SQ9
                SQ9: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  regular sequence register 3
            SQR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SQ10
                SQ10: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  SQ11
                SQ11: u5 = 0x0,
                reserved12: u1 = 0x0,
                ///  SQ12
                SQ12: u5 = 0x0,
                reserved18: u1 = 0x0,
                ///  SQ13
                SQ13: u5 = 0x0,
                reserved24: u1 = 0x0,
                ///  SQ14
                SQ14: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  regular sequence register 4
            SQR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SQ15
                SQ15: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  SQ16
                SQ16: u5 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  regular Data Register
            DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Regular Data converted
                RDATA: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved76: [8]u8,
            ///  injected sequence register
            JSQR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JL
                JL: u2 = 0x0,
                ///  JEXTSEL
                JEXTSEL: u5 = 0x0,
                ///  JEXTEN
                JEXTEN: u2 = 0x0,
                ///  JSQ1
                JSQ1: u5 = 0x0,
                reserved15: u1 = 0x0,
                ///  JSQ2
                JSQ2: u5 = 0x0,
                reserved21: u1 = 0x0,
                ///  JSQ3
                JSQ3: u5 = 0x0,
                reserved27: u1 = 0x0,
                ///  JSQ4
                JSQ4: u5 = 0x0,
            }),
            reserved96: [16]u8,
            ///  offset register 1
            OFR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  OFFSET1
                OFFSET1: u12 = 0x0,
                reserved24: u12 = 0x0,
                ///  OFFSETPOS
                OFFSETPOS: u1 = 0x0,
                ///  SATEN
                SATEN: u1 = 0x0,
                ///  OFFSET1_CH
                OFFSET1_CH: u5 = 0x0,
                ///  OFFSET1_EN
                OFFSET1_EN: u1 = 0x0,
            }),
            ///  offset register 2
            OFR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  OFFSET1
                OFFSET1: u12 = 0x0,
                reserved24: u12 = 0x0,
                ///  OFFSETPOS
                OFFSETPOS: u1 = 0x0,
                ///  SATEN
                SATEN: u1 = 0x0,
                ///  OFFSET1_CH
                OFFSET1_CH: u5 = 0x0,
                ///  OFFSET1_EN
                OFFSET1_EN: u1 = 0x0,
            }),
            ///  offset register 3
            OFR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  OFFSET1
                OFFSET1: u12 = 0x0,
                reserved24: u12 = 0x0,
                ///  OFFSETPOS
                OFFSETPOS: u1 = 0x0,
                ///  SATEN
                SATEN: u1 = 0x0,
                ///  OFFSET1_CH
                OFFSET1_CH: u5 = 0x0,
                ///  OFFSET1_EN
                OFFSET1_EN: u1 = 0x0,
            }),
            ///  offset register 4
            OFR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  OFFSET1
                OFFSET1: u12 = 0x0,
                reserved24: u12 = 0x0,
                ///  OFFSETPOS
                OFFSETPOS: u1 = 0x0,
                ///  SATEN
                SATEN: u1 = 0x0,
                ///  OFFSET1_CH
                OFFSET1_CH: u5 = 0x0,
                ///  OFFSET1_EN
                OFFSET1_EN: u1 = 0x0,
            }),
            reserved128: [16]u8,
            ///  injected data register 1
            JDR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JDATA1
                JDATA1: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  injected data register 2
            JDR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JDATA2
                JDATA2: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  injected data register 3
            JDR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JDATA3
                JDATA3: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  injected data register 4
            JDR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  JDATA4
                JDATA4: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved160: [16]u8,
            ///  Analog Watchdog 2 Configuration Register
            AWD2CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  AWD2CH
                AWD2CH: u19 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  Analog Watchdog 3 Configuration Register
            AWD3CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  AWD3CH
                AWD3CH: u19 = 0x0,
                padding: u13 = 0x0,
            }),
            reserved176: [8]u8,
            ///  Differential Mode Selection Register 2
            DIFSEL: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Differential mode for channels 0
                DIFSEL_0: u1 = 0x0,
                ///  Differential mode for channels 15 to 1
                DIFSEL_1_18: u18 = 0x0,
                padding: u13 = 0x0,
            }),
            ///  Calibration Factors
            CALFACT: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CALFACT_S
                CALFACT_S: u7 = 0x0,
                reserved16: u9 = 0x0,
                ///  CALFACT_D
                CALFACT_D: u7 = 0x0,
                padding: u9 = 0x0,
            }),
            reserved192: [8]u8,
            ///  Gain compensation Register
            GCOMP: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  GCOMPCOEFF
                GCOMPCOEFF: u14 = 0x0,
                padding: u18 = 0x0,
            }),
        };

        ///  External interrupt/event controller
        pub const EXTI = extern struct {
            ///  Interrupt mask register
            IMR1: mmio.Mmio(packed struct(u32) { // reset_value: 0xFF820000
                ///  Interrupt Mask on line 0
                IM0: u1 = 0x0,
                ///  Interrupt Mask on line 1
                IM1: u1 = 0x0,
                ///  Interrupt Mask on line 2
                IM2: u1 = 0x0,
                ///  Interrupt Mask on line 3
                IM3: u1 = 0x0,
                ///  Interrupt Mask on line 4
                IM4: u1 = 0x0,
                ///  Interrupt Mask on line 5
                IM5: u1 = 0x0,
                ///  Interrupt Mask on line 6
                IM6: u1 = 0x0,
                ///  Interrupt Mask on line 7
                IM7: u1 = 0x0,
                ///  Interrupt Mask on line 8
                IM8: u1 = 0x0,
                ///  Interrupt Mask on line 9
                IM9: u1 = 0x0,
                ///  Interrupt Mask on line 10
                IM10: u1 = 0x0,
                ///  Interrupt Mask on line 11
                IM11: u1 = 0x0,
                ///  Interrupt Mask on line 12
                IM12: u1 = 0x0,
                ///  Interrupt Mask on line 13
                IM13: u1 = 0x0,
                ///  Interrupt Mask on line 14
                IM14: u1 = 0x0,
                ///  Interrupt Mask on line 15
                IM15: u1 = 0x0,
                ///  Interrupt Mask on line 16
                IM16: u1 = 0x0,
                ///  Interrupt Mask on line 17
                IM17: u1 = 0x1,
                ///  Interrupt Mask on line 18
                IM18: u1 = 0x0,
                ///  Interrupt Mask on line 19
                IM19: u1 = 0x0,
                ///  Interrupt Mask on line 20
                IM20: u1 = 0x0,
                ///  Interrupt Mask on line 21
                IM21: u1 = 0x0,
                ///  Interrupt Mask on line 22
                IM22: u1 = 0x0,
                ///  Interrupt Mask on line 23
                IM23: u1 = 0x1,
                ///  Interrupt Mask on line 24
                IM24: u1 = 0x1,
                ///  Interrupt Mask on line 25
                IM25: u1 = 0x1,
                ///  Interrupt Mask on line 26
                IM26: u1 = 0x1,
                ///  Interrupt Mask on line 27
                IM27: u1 = 0x1,
                ///  Interrupt Mask on line 28
                IM28: u1 = 0x1,
                ///  Interrupt Mask on line 29
                IM29: u1 = 0x1,
                ///  Interrupt Mask on line 30
                IM30: u1 = 0x1,
                ///  Interrupt Mask on line 31
                IM31: u1 = 0x1,
            }),
            ///  Event mask register
            EMR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Event Mask on line 0
                EM0: u1 = 0x0,
                ///  Event Mask on line 1
                EM1: u1 = 0x0,
                ///  Event Mask on line 2
                EM2: u1 = 0x0,
                ///  Event Mask on line 3
                EM3: u1 = 0x0,
                ///  Event Mask on line 4
                EM4: u1 = 0x0,
                ///  Event Mask on line 5
                EM5: u1 = 0x0,
                ///  Event Mask on line 6
                EM6: u1 = 0x0,
                ///  Event Mask on line 7
                EM7: u1 = 0x0,
                ///  Event Mask on line 8
                EM8: u1 = 0x0,
                ///  Event Mask on line 9
                EM9: u1 = 0x0,
                ///  Event Mask on line 10
                EM10: u1 = 0x0,
                ///  Event Mask on line 11
                EM11: u1 = 0x0,
                ///  Event Mask on line 12
                EM12: u1 = 0x0,
                ///  Event Mask on line 13
                EM13: u1 = 0x0,
                ///  Event Mask on line 14
                EM14: u1 = 0x0,
                ///  Event Mask on line 15
                EM15: u1 = 0x0,
                ///  Event Mask on line 16
                EM16: u1 = 0x0,
                ///  Event Mask on line 17
                EM17: u1 = 0x0,
                ///  Event Mask on line 18
                EM18: u1 = 0x0,
                ///  Event Mask on line 19
                EM19: u1 = 0x0,
                ///  Event Mask on line 20
                EM20: u1 = 0x0,
                ///  Event Mask on line 21
                EM21: u1 = 0x0,
                ///  Event Mask on line 22
                EM22: u1 = 0x0,
                ///  Event Mask on line 23
                EM23: u1 = 0x0,
                ///  Event Mask on line 24
                EM24: u1 = 0x0,
                ///  Event Mask on line 25
                EM25: u1 = 0x0,
                ///  Event Mask on line 26
                EM26: u1 = 0x0,
                ///  Event Mask on line 27
                EM27: u1 = 0x0,
                ///  Event Mask on line 28
                EM28: u1 = 0x0,
                ///  Event Mask on line 29
                EM29: u1 = 0x0,
                ///  Event Mask on line 30
                EM30: u1 = 0x0,
                ///  Event Mask on line 31
                EM31: u1 = 0x0,
            }),
            ///  Rising Trigger selection register
            RTSR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Rising trigger event configuration of line 0
                RT0: u1 = 0x0,
                ///  Rising trigger event configuration of line 1
                RT1: u1 = 0x0,
                ///  Rising trigger event configuration of line 2
                RT2: u1 = 0x0,
                ///  Rising trigger event configuration of line 3
                RT3: u1 = 0x0,
                ///  Rising trigger event configuration of line 4
                RT4: u1 = 0x0,
                ///  Rising trigger event configuration of line 5
                RT5: u1 = 0x0,
                ///  Rising trigger event configuration of line 6
                RT6: u1 = 0x0,
                ///  Rising trigger event configuration of line 7
                RT7: u1 = 0x0,
                ///  Rising trigger event configuration of line 8
                RT8: u1 = 0x0,
                ///  Rising trigger event configuration of line 9
                RT9: u1 = 0x0,
                ///  Rising trigger event configuration of line 10
                RT10: u1 = 0x0,
                ///  Rising trigger event configuration of line 11
                RT11: u1 = 0x0,
                ///  Rising trigger event configuration of line 12
                RT12: u1 = 0x0,
                ///  Rising trigger event configuration of line 13
                RT13: u1 = 0x0,
                ///  Rising trigger event configuration of line 14
                RT14: u1 = 0x0,
                ///  Rising trigger event configuration of line 15
                RT15: u1 = 0x0,
                ///  Rising trigger event configuration of line 16
                RT16: u1 = 0x0,
                reserved18: u1 = 0x0,
                ///  Rising trigger event configuration of line 18
                RT18: u1 = 0x0,
                ///  Rising trigger event configuration of line 19
                RT19: u1 = 0x0,
                ///  Rising trigger event configuration of line 20
                RT20: u1 = 0x0,
                ///  Rising trigger event configuration of line 21
                RT21: u1 = 0x0,
                ///  Rising trigger event configuration of line 22
                RT22: u1 = 0x0,
                reserved29: u6 = 0x0,
                ///  RT
                RT: u3 = 0x0,
            }),
            ///  Falling Trigger selection register
            FTSR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Falling trigger event configuration of line 0
                FT0: u1 = 0x0,
                ///  Falling trigger event configuration of line 1
                FT1: u1 = 0x0,
                ///  Falling trigger event configuration of line 2
                FT2: u1 = 0x0,
                ///  Falling trigger event configuration of line 3
                FT3: u1 = 0x0,
                ///  Falling trigger event configuration of line 4
                FT4: u1 = 0x0,
                ///  Falling trigger event configuration of line 5
                FT5: u1 = 0x0,
                ///  Falling trigger event configuration of line 6
                FT6: u1 = 0x0,
                ///  Falling trigger event configuration of line 7
                FT7: u1 = 0x0,
                ///  Falling trigger event configuration of line 8
                FT8: u1 = 0x0,
                ///  Falling trigger event configuration of line 9
                FT9: u1 = 0x0,
                ///  Falling trigger event configuration of line 10
                FT10: u1 = 0x0,
                ///  Falling trigger event configuration of line 11
                FT11: u1 = 0x0,
                ///  Falling trigger event configuration of line 12
                FT12: u1 = 0x0,
                ///  Falling trigger event configuration of line 13
                FT13: u1 = 0x0,
                ///  Falling trigger event configuration of line 14
                FT14: u1 = 0x0,
                ///  Falling trigger event configuration of line 15
                FT15: u1 = 0x0,
                ///  Falling trigger event configuration of line 16
                FT16: u1 = 0x0,
                reserved18: u1 = 0x0,
                ///  Falling trigger event configuration of line 18
                FT18: u1 = 0x0,
                ///  Falling trigger event configuration of line 19
                FT19: u1 = 0x0,
                ///  Falling trigger event configuration of line 20
                FT20: u1 = 0x0,
                ///  Falling trigger event configuration of line 21
                FT21: u1 = 0x0,
                ///  Falling trigger event configuration of line 22
                FT22: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  Software interrupt event register
            SWIER1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Interrupt on line 0
                SWI0: u1 = 0x0,
                ///  Software Interrupt on line 1
                SWI1: u1 = 0x0,
                ///  Software Interrupt on line 2
                SWI2: u1 = 0x0,
                ///  Software Interrupt on line 3
                SWI3: u1 = 0x0,
                ///  Software Interrupt on line 4
                SWI4: u1 = 0x0,
                ///  Software Interrupt on line 5
                SWI5: u1 = 0x0,
                ///  Software Interrupt on line 6
                SWI6: u1 = 0x0,
                ///  Software Interrupt on line 7
                SWI7: u1 = 0x0,
                ///  Software Interrupt on line 8
                SWI8: u1 = 0x0,
                ///  Software Interrupt on line 9
                SWI9: u1 = 0x0,
                ///  Software Interrupt on line 10
                SWI10: u1 = 0x0,
                ///  Software Interrupt on line 11
                SWI11: u1 = 0x0,
                ///  Software Interrupt on line 12
                SWI12: u1 = 0x0,
                ///  Software Interrupt on line 13
                SWI13: u1 = 0x0,
                ///  Software Interrupt on line 14
                SWI14: u1 = 0x0,
                ///  Software Interrupt on line 15
                SWI15: u1 = 0x0,
                ///  Software Interrupt on line 16
                SWI16: u1 = 0x0,
                reserved18: u1 = 0x0,
                ///  Software Interrupt on line 18
                SWI18: u1 = 0x0,
                ///  Software Interrupt on line 19
                SWI19: u1 = 0x0,
                ///  Software Interrupt on line 20
                SWI20: u1 = 0x0,
                ///  Software Interrupt on line 21
                SWI21: u1 = 0x0,
                ///  Software Interrupt on line 22
                SWI22: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  Pending register
            PR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Pending bit 0
                PIF0: u1 = 0x0,
                ///  Pending bit 1
                PIF1: u1 = 0x0,
                ///  Pending bit 2
                PIF2: u1 = 0x0,
                ///  Pending bit 3
                PIF3: u1 = 0x0,
                ///  Pending bit 4
                PIF4: u1 = 0x0,
                ///  Pending bit 5
                PIF5: u1 = 0x0,
                ///  Pending bit 6
                PIF6: u1 = 0x0,
                ///  Pending bit 7
                PIF7: u1 = 0x0,
                ///  Pending bit 8
                PIF8: u1 = 0x0,
                ///  Pending bit 9
                PIF9: u1 = 0x0,
                ///  Pending bit 10
                PIF10: u1 = 0x0,
                ///  Pending bit 11
                PIF11: u1 = 0x0,
                ///  Pending bit 12
                PIF12: u1 = 0x0,
                ///  Pending bit 13
                PIF13: u1 = 0x0,
                ///  Pending bit 14
                PIF14: u1 = 0x0,
                ///  Pending bit 15
                PIF15: u1 = 0x0,
                ///  Pending bit 16
                PIF16: u1 = 0x0,
                reserved18: u1 = 0x0,
                ///  Pending bit 18
                PIF18: u1 = 0x0,
                ///  Pending bit 19
                PIF19: u1 = 0x0,
                ///  Pending bit 20
                PIF20: u1 = 0x0,
                ///  Pending bit 21
                PIF21: u1 = 0x0,
                ///  Pending bit 22
                PIF22: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            reserved32: [8]u8,
            ///  Interrupt mask register
            IMR2: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFF87
                ///  Interrupt Mask on external/internal line 32
                IM32: u1 = 0x1,
                ///  Interrupt Mask on external/internal line 33
                IM33: u1 = 0x1,
                ///  Interrupt Mask on external/internal line 34
                IM34: u1 = 0x1,
                ///  Interrupt Mask on external/internal line 35
                IM35: u1 = 0x0,
                ///  Interrupt Mask on external/internal line 36
                IM36: u1 = 0x0,
                ///  Interrupt Mask on external/internal line 37
                IM37: u1 = 0x0,
                ///  Interrupt Mask on external/internal line 38
                IM38: u1 = 0x0,
                ///  Interrupt Mask on external/internal line 39
                IM39: u1 = 0x1,
                ///  Interrupt Mask on external/internal line 40
                IM40: u1 = 0x1,
                ///  Interrupt Mask on external/internal line 41
                IM41: u1 = 0x1,
                ///  Interrupt Mask on external/internal line 42
                IM42: u1 = 0x1,
                ///  Interrupt Mask on external/internal line 43
                IM43: u1 = 0x1,
                padding: u20 = 0xFFFFF,
            }),
            ///  Event mask register
            EMR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Event mask on external/internal line 32
                EM32: u1 = 0x0,
                ///  Event mask on external/internal line 33
                EM33: u1 = 0x0,
                ///  Event mask on external/internal line 34
                EM34: u1 = 0x0,
                ///  Event mask on external/internal line 35
                EM35: u1 = 0x0,
                ///  Event mask on external/internal line 36
                EM36: u1 = 0x0,
                ///  Event mask on external/internal line 37
                EM37: u1 = 0x0,
                ///  Event mask on external/internal line 38
                EM38: u1 = 0x0,
                ///  Event mask on external/internal line 39
                EM39: u1 = 0x0,
                ///  Event mask on external/internal line 40
                EM40: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  Rising Trigger selection register
            RTSR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Rising trigger event configuration bit of line 32
                RT32: u1 = 0x0,
                ///  Rising trigger event configuration bit of line 32
                RT33: u1 = 0x0,
                reserved6: u4 = 0x0,
                ///  Rising trigger event configuration bit of line 38
                RT38: u1 = 0x0,
                ///  Rising trigger event configuration bit of line 39
                RT39: u1 = 0x0,
                ///  Rising trigger event configuration bit of line 40
                RT40: u1 = 0x0,
                ///  Rising trigger event configuration bit of line 41
                RT41: u1 = 0x0,
                padding: u22 = 0x0,
            }),
            ///  Falling Trigger selection register
            FTSR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved3: u3 = 0x0,
                ///  Falling trigger event configuration bit of line 35
                FT35: u1 = 0x0,
                ///  Falling trigger event configuration bit of line 36
                FT36: u1 = 0x0,
                ///  Falling trigger event configuration bit of line 37
                FT37: u1 = 0x0,
                ///  Falling trigger event configuration bit of line 38
                FT38: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  Software interrupt event register
            SWIER2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved3: u3 = 0x0,
                ///  Software interrupt on line 35
                SWI35: u1 = 0x0,
                ///  Software interrupt on line 36
                SWI36: u1 = 0x0,
                ///  Software interrupt on line 37
                SWI37: u1 = 0x0,
                ///  Software interrupt on line 38
                SWI38: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  Pending register
            PR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved3: u3 = 0x0,
                ///  Pending interrupt flag on line 35
                PIF35: u1 = 0x0,
                ///  Pending interrupt flag on line 36
                PIF36: u1 = 0x0,
                ///  Pending interrupt flag on line 37
                PIF37: u1 = 0x0,
                ///  Pending interrupt flag on line 38
                PIF38: u1 = 0x0,
                padding: u25 = 0x0,
            }),
        };

        ///  Real-time clock
        pub const RTC = extern struct {
            ///  time register
            TR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Second units in BCD format
                SU: u4 = 0x0,
                ///  Second tens in BCD format
                ST: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  Minute units in BCD format
                MNU: u4 = 0x0,
                ///  Minute tens in BCD format
                MNT: u3 = 0x0,
                reserved16: u1 = 0x0,
                ///  Hour units in BCD format
                HU: u4 = 0x0,
                ///  Hour tens in BCD format
                HT: u2 = 0x0,
                ///  AM/PM notation
                PM: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  date register
            DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x2101
                ///  Date units in BCD format
                DU: u4 = 0x1,
                ///  Date tens in BCD format
                DT: u2 = 0x0,
                reserved8: u2 = 0x0,
                ///  Month units in BCD format
                MU: u4 = 0x1,
                ///  Month tens in BCD format
                MT: u1 = 0x0,
                ///  Week day units
                WDU: u3 = 0x1,
                ///  Year units in BCD format
                YU: u4 = 0x0,
                ///  Year tens in BCD format
                YT: u4 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  sub second register
            SSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Sub second value
                SS: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  initialization and status register
            ICSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x7
                ///  Alarm A write flag
                ALRAWF: u1 = 0x1,
                ///  Alarm B write flag
                ALRBWF: u1 = 0x1,
                ///  Wakeup timer write flag
                WUTWF: u1 = 0x1,
                ///  Shift operation pending
                SHPF: u1 = 0x0,
                ///  Initialization status flag
                INITS: u1 = 0x0,
                ///  Registers synchronization flag
                RSF: u1 = 0x0,
                ///  Initialization flag
                INITF: u1 = 0x0,
                ///  Initialization mode
                INIT: u1 = 0x0,
                reserved16: u8 = 0x0,
                ///  Recalibration pending Flag
                RECALPF: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  prescaler register
            PRER: mmio.Mmio(packed struct(u32) { // reset_value: 0x7F00FF
                ///  Synchronous prescaler factor
                PREDIV_S: u15 = 0xFF,
                reserved16: u1 = 0x0,
                ///  Asynchronous prescaler factor
                PREDIV_A: u7 = 0x7F,
                padding: u9 = 0x0,
            }),
            ///  wakeup timer register
            WUTR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Wakeup auto-reload value bits
                WUT: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  control register
            CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Wakeup clock selection
                WCKSEL: u3 = 0x0,
                ///  Time-stamp event active edge
                TSEDGE: u1 = 0x0,
                ///  Reference clock detection enable (50 or 60 Hz)
                REFCKON: u1 = 0x0,
                ///  Bypass the shadow registers
                BYPSHAD: u1 = 0x0,
                ///  Hour format
                FMT: u1 = 0x0,
                reserved8: u1 = 0x0,
                ///  Alarm A enable
                ALRAE: u1 = 0x0,
                ///  Alarm B enable
                ALRBE: u1 = 0x0,
                ///  Wakeup timer enable
                WUTE: u1 = 0x0,
                ///  Time stamp enable
                TSE: u1 = 0x0,
                ///  Alarm A interrupt enable
                ALRAIE: u1 = 0x0,
                ///  Alarm B interrupt enable
                ALRBIE: u1 = 0x0,
                ///  Wakeup timer interrupt enable
                WUTIE: u1 = 0x0,
                ///  Time-stamp interrupt enable
                TSIE: u1 = 0x0,
                ///  Add 1 hour (summer time change)
                ADD1H: u1 = 0x0,
                ///  Subtract 1 hour (winter time change)
                SUB1H: u1 = 0x0,
                ///  Backup
                BKP: u1 = 0x0,
                ///  Calibration output selection
                COSEL: u1 = 0x0,
                ///  Output polarity
                POL: u1 = 0x0,
                ///  Output selection
                OSEL: u2 = 0x0,
                ///  Calibration output enable
                COE: u1 = 0x0,
                ///  timestamp on internal event enable
                ITSE: u1 = 0x0,
                ///  TAMPTS
                TAMPTS: u1 = 0x0,
                ///  TAMPOE
                TAMPOE: u1 = 0x0,
                reserved29: u2 = 0x0,
                ///  TAMPALRM_PU
                TAMPALRM_PU: u1 = 0x0,
                ///  TAMPALRM_TYPE
                TAMPALRM_TYPE: u1 = 0x0,
                ///  OUT2EN
                OUT2EN: u1 = 0x0,
            }),
            reserved36: [8]u8,
            ///  write protection register
            WPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Write protection key
                KEY: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  calibration register
            CALR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Calibration minus
                CALM: u9 = 0x0,
                reserved13: u4 = 0x0,
                ///  Use a 16-second calibration cycle period
                CALW16: u1 = 0x0,
                ///  Use an 8-second calibration cycle period
                CALW8: u1 = 0x0,
                ///  Increase frequency of RTC by 488.5 ppm
                CALP: u1 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  shift control register
            SHIFTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Subtract a fraction of a second
                SUBFS: u15 = 0x0,
                reserved31: u16 = 0x0,
                ///  Add one second
                ADD1S: u1 = 0x0,
            }),
            ///  time stamp time register
            TSTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Second units in BCD format
                SU: u4 = 0x0,
                ///  Second tens in BCD format
                ST: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  Minute units in BCD format
                MNU: u4 = 0x0,
                ///  Minute tens in BCD format
                MNT: u3 = 0x0,
                reserved16: u1 = 0x0,
                ///  Hour units in BCD format
                HU: u4 = 0x0,
                ///  Hour tens in BCD format
                HT: u2 = 0x0,
                ///  AM/PM notation
                PM: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  time stamp date register
            TSDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Date units in BCD format
                DU: u4 = 0x0,
                ///  Date tens in BCD format
                DT: u2 = 0x0,
                reserved8: u2 = 0x0,
                ///  Month units in BCD format
                MU: u4 = 0x0,
                ///  Month tens in BCD format
                MT: u1 = 0x0,
                ///  Week day units
                WDU: u3 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  timestamp sub second register
            TSSSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Sub second value
                SS: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved64: [4]u8,
            ///  alarm A register
            ALRMAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Second units in BCD format
                SU: u4 = 0x0,
                ///  Second tens in BCD format
                ST: u3 = 0x0,
                ///  Alarm A seconds mask
                MSK1: u1 = 0x0,
                ///  Minute units in BCD format
                MNU: u4 = 0x0,
                ///  Minute tens in BCD format
                MNT: u3 = 0x0,
                ///  Alarm A minutes mask
                MSK2: u1 = 0x0,
                ///  Hour units in BCD format
                HU: u4 = 0x0,
                ///  Hour tens in BCD format
                HT: u2 = 0x0,
                ///  AM/PM notation
                PM: u1 = 0x0,
                ///  Alarm A hours mask
                MSK3: u1 = 0x0,
                ///  Date units or day in BCD format
                DU: u4 = 0x0,
                ///  Date tens in BCD format
                DT: u2 = 0x0,
                ///  Week day selection
                WDSEL: u1 = 0x0,
                ///  Alarm A date mask
                MSK4: u1 = 0x0,
            }),
            ///  alarm A sub second register
            ALRMASSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Sub seconds value
                SS: u15 = 0x0,
                reserved24: u9 = 0x0,
                ///  Mask the most-significant bits starting at this bit
                MASKSS: u4 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  alarm B register
            ALRMBR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Second units in BCD format
                SU: u4 = 0x0,
                ///  Second tens in BCD format
                ST: u3 = 0x0,
                ///  Alarm B seconds mask
                MSK1: u1 = 0x0,
                ///  Minute units in BCD format
                MNU: u4 = 0x0,
                ///  Minute tens in BCD format
                MNT: u3 = 0x0,
                ///  Alarm B minutes mask
                MSK2: u1 = 0x0,
                ///  Hour units in BCD format
                HU: u4 = 0x0,
                ///  Hour tens in BCD format
                HT: u2 = 0x0,
                ///  AM/PM notation
                PM: u1 = 0x0,
                ///  Alarm B hours mask
                MSK3: u1 = 0x0,
                ///  Date units or day in BCD format
                DU: u4 = 0x0,
                ///  Date tens in BCD format
                DT: u2 = 0x0,
                ///  Week day selection
                WDSEL: u1 = 0x0,
                ///  Alarm B date mask
                MSK4: u1 = 0x0,
            }),
            ///  alarm B sub second register
            ALRMBSSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Sub seconds value
                SS: u15 = 0x0,
                reserved24: u9 = 0x0,
                ///  Mask the most-significant bits starting at this bit
                MASKSS: u4 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  status register
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ALRAF
                ALRAF: u1 = 0x0,
                ///  ALRBF
                ALRBF: u1 = 0x0,
                ///  WUTF
                WUTF: u1 = 0x0,
                ///  TSF
                TSF: u1 = 0x0,
                ///  TSOVF
                TSOVF: u1 = 0x0,
                ///  ITSF
                ITSF: u1 = 0x0,
                padding: u26 = 0x0,
            }),
            ///  status register
            MISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ALRAMF
                ALRAMF: u1 = 0x0,
                ///  ALRBMF
                ALRBMF: u1 = 0x0,
                ///  WUTMF
                WUTMF: u1 = 0x0,
                ///  TSMF
                TSMF: u1 = 0x0,
                ///  TSOVMF
                TSOVMF: u1 = 0x0,
                ///  ITSMF
                ITSMF: u1 = 0x0,
                padding: u26 = 0x0,
            }),
            reserved92: [4]u8,
            ///  status register
            SCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CALRAF
                CALRAF: u1 = 0x0,
                ///  CALRBF
                CALRBF: u1 = 0x0,
                ///  CWUTF
                CWUTF: u1 = 0x0,
                ///  CTSF
                CTSF: u1 = 0x0,
                ///  CTSOVF
                CTSOVF: u1 = 0x0,
                ///  CITSF
                CITSF: u1 = 0x0,
                padding: u26 = 0x0,
            }),
        };

        ///  Flexible memory controller
        pub const FMC = extern struct {
            ///  SRAM/NOR-Flash chip-select control register 1
            BCR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x30D0
                ///  MBKEN
                MBKEN: u1 = 0x0,
                ///  MUXEN
                MUXEN: u1 = 0x0,
                ///  MTYP
                MTYP: u2 = 0x0,
                ///  MWID
                MWID: u2 = 0x1,
                ///  FACCEN
                FACCEN: u1 = 0x1,
                reserved8: u1 = 0x1,
                ///  BURSTEN
                BURSTEN: u1 = 0x0,
                ///  WAITPOL
                WAITPOL: u1 = 0x0,
                reserved11: u1 = 0x0,
                ///  WAITCFG
                WAITCFG: u1 = 0x0,
                ///  WREN
                WREN: u1 = 0x1,
                ///  WAITEN
                WAITEN: u1 = 0x1,
                ///  EXTMOD
                EXTMOD: u1 = 0x0,
                ///  ASYNCWAIT
                ASYNCWAIT: u1 = 0x0,
                ///  CPSIZE
                CPSIZE: u3 = 0x0,
                ///  CBURSTRW
                CBURSTRW: u1 = 0x0,
                ///  CCLKEN
                CCLKEN: u1 = 0x0,
                ///  WFDIS
                WFDIS: u1 = 0x0,
                ///  NBLSET
                NBLSET: u2 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  SRAM/NOR-Flash chip-select timing register 1
            BTR1: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFFF
                ///  ADDSET
                ADDSET: u4 = 0xF,
                ///  ADDHLD
                ADDHLD: u4 = 0xF,
                ///  DATAST
                DATAST: u8 = 0xFF,
                ///  BUSTURN
                BUSTURN: u4 = 0xF,
                ///  CLKDIV
                CLKDIV: u4 = 0xF,
                ///  DATLAT
                DATLAT: u4 = 0xF,
                ///  ACCMOD
                ACCMOD: u2 = 0x3,
                ///  DATAHLD
                DATAHLD: u2 = 0x3,
            }),
            ///  SRAM/NOR-Flash chip-select control register 2
            BCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x30D0
                ///  MBKEN
                MBKEN: u1 = 0x0,
                ///  MUXEN
                MUXEN: u1 = 0x0,
                ///  MTYP
                MTYP: u2 = 0x0,
                ///  MWID
                MWID: u2 = 0x1,
                ///  FACCEN
                FACCEN: u1 = 0x1,
                reserved8: u1 = 0x1,
                ///  BURSTEN
                BURSTEN: u1 = 0x0,
                ///  WAITPOL
                WAITPOL: u1 = 0x0,
                reserved11: u1 = 0x0,
                ///  WAITCFG
                WAITCFG: u1 = 0x0,
                ///  WREN
                WREN: u1 = 0x1,
                ///  WAITEN
                WAITEN: u1 = 0x1,
                ///  EXTMOD
                EXTMOD: u1 = 0x0,
                ///  ASYNCWAIT
                ASYNCWAIT: u1 = 0x0,
                ///  CPSIZE
                CPSIZE: u3 = 0x0,
                ///  CBURSTRW
                CBURSTRW: u1 = 0x0,
                ///  CCLKEN
                CCLKEN: u1 = 0x0,
                ///  WFDIS
                WFDIS: u1 = 0x0,
                ///  NBLSET
                NBLSET: u2 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  SRAM/NOR-Flash chip-select timing register 2
            BTR2: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFFF
                ///  ADDSET
                ADDSET: u4 = 0xF,
                ///  ADDHLD
                ADDHLD: u4 = 0xF,
                ///  DATAST
                DATAST: u8 = 0xFF,
                ///  BUSTURN
                BUSTURN: u4 = 0xF,
                ///  CLKDIV
                CLKDIV: u4 = 0xF,
                ///  DATLAT
                DATLAT: u4 = 0xF,
                ///  ACCMOD
                ACCMOD: u2 = 0x3,
                ///  DATAHLD
                DATAHLD: u2 = 0x3,
            }),
            ///  SRAM/NOR-Flash chip-select control register 3
            BCR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x30D0
                ///  MBKEN
                MBKEN: u1 = 0x0,
                ///  MUXEN
                MUXEN: u1 = 0x0,
                ///  MTYP
                MTYP: u2 = 0x0,
                ///  MWID
                MWID: u2 = 0x1,
                ///  FACCEN
                FACCEN: u1 = 0x1,
                reserved8: u1 = 0x1,
                ///  BURSTEN
                BURSTEN: u1 = 0x0,
                ///  WAITPOL
                WAITPOL: u1 = 0x0,
                reserved11: u1 = 0x0,
                ///  WAITCFG
                WAITCFG: u1 = 0x0,
                ///  WREN
                WREN: u1 = 0x1,
                ///  WAITEN
                WAITEN: u1 = 0x1,
                ///  EXTMOD
                EXTMOD: u1 = 0x0,
                ///  ASYNCWAIT
                ASYNCWAIT: u1 = 0x0,
                ///  CPSIZE
                CPSIZE: u3 = 0x0,
                ///  CBURSTRW
                CBURSTRW: u1 = 0x0,
                ///  CCLKEN
                CCLKEN: u1 = 0x0,
                ///  WFDIS
                WFDIS: u1 = 0x0,
                ///  NBLSET
                NBLSET: u2 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  SRAM/NOR-Flash chip-select timing register 3
            BTR3: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFFF
                ///  ADDSET
                ADDSET: u4 = 0xF,
                ///  ADDHLD
                ADDHLD: u4 = 0xF,
                ///  DATAST
                DATAST: u8 = 0xFF,
                ///  BUSTURN
                BUSTURN: u4 = 0xF,
                ///  CLKDIV
                CLKDIV: u4 = 0xF,
                ///  DATLAT
                DATLAT: u4 = 0xF,
                ///  ACCMOD
                ACCMOD: u2 = 0x3,
                ///  DATAHLD
                DATAHLD: u2 = 0x3,
            }),
            ///  SRAM/NOR-Flash chip-select control register 4
            BCR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x30D0
                ///  MBKEN
                MBKEN: u1 = 0x0,
                ///  MUXEN
                MUXEN: u1 = 0x0,
                ///  MTYP
                MTYP: u2 = 0x0,
                ///  MWID
                MWID: u2 = 0x1,
                ///  FACCEN
                FACCEN: u1 = 0x1,
                reserved8: u1 = 0x1,
                ///  BURSTEN
                BURSTEN: u1 = 0x0,
                ///  WAITPOL
                WAITPOL: u1 = 0x0,
                reserved11: u1 = 0x0,
                ///  WAITCFG
                WAITCFG: u1 = 0x0,
                ///  WREN
                WREN: u1 = 0x1,
                ///  WAITEN
                WAITEN: u1 = 0x1,
                ///  EXTMOD
                EXTMOD: u1 = 0x0,
                ///  ASYNCWAIT
                ASYNCWAIT: u1 = 0x0,
                ///  CPSIZE
                CPSIZE: u3 = 0x0,
                ///  CBURSTRW
                CBURSTRW: u1 = 0x0,
                ///  CCLKEN
                CCLKEN: u1 = 0x0,
                ///  WFDIS
                WFDIS: u1 = 0x0,
                ///  NBLSET
                NBLSET: u2 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  SRAM/NOR-Flash chip-select timing register 4
            BTR4: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFFF
                ///  ADDSET
                ADDSET: u4 = 0xF,
                ///  ADDHLD
                ADDHLD: u4 = 0xF,
                ///  DATAST
                DATAST: u8 = 0xFF,
                ///  BUSTURN
                BUSTURN: u4 = 0xF,
                ///  CLKDIV
                CLKDIV: u4 = 0xF,
                ///  DATLAT
                DATLAT: u4 = 0xF,
                ///  ACCMOD
                ACCMOD: u2 = 0x3,
                ///  DATAHLD
                DATAHLD: u2 = 0x3,
            }),
            ///  PSRAM chip select counter register
            PCSCNTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CSCOUNT
                CSCOUNT: u16 = 0x0,
                ///  CNTB1EN
                CNTB1EN: u1 = 0x0,
                ///  CNTB2EN
                CNTB2EN: u1 = 0x0,
                ///  CNTB3EN
                CNTB3EN: u1 = 0x0,
                ///  CNTB4EN
                CNTB4EN: u1 = 0x0,
                padding: u12 = 0x0,
            }),
            reserved128: [92]u8,
            ///  PC Card/NAND Flash control register 3
            PCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x18
                reserved1: u1 = 0x0,
                ///  PWAITEN
                PWAITEN: u1 = 0x0,
                ///  PBKEN
                PBKEN: u1 = 0x0,
                ///  PTYP
                PTYP: u1 = 0x1,
                ///  PWID
                PWID: u2 = 0x1,
                ///  ECCEN
                ECCEN: u1 = 0x0,
                reserved9: u2 = 0x0,
                ///  TCLR
                TCLR: u4 = 0x0,
                ///  TAR
                TAR: u4 = 0x0,
                ///  ECCPS
                ECCPS: u3 = 0x0,
                padding: u12 = 0x0,
            }),
            ///  FIFO status and interrupt register 3
            SR: mmio.Mmio(packed struct(u32) { // reset_value: 0x40
                ///  IRS
                IRS: u1 = 0x0,
                ///  ILS
                ILS: u1 = 0x0,
                ///  IFS
                IFS: u1 = 0x0,
                ///  IREN
                IREN: u1 = 0x0,
                ///  ILEN
                ILEN: u1 = 0x0,
                ///  IFEN
                IFEN: u1 = 0x0,
                ///  FEMPT
                FEMPT: u1 = 0x1,
                padding: u25 = 0x0,
            }),
            ///  Common memory space timing register 3
            PMEM: mmio.Mmio(packed struct(u32) { // reset_value: 0xFCFCFCFC
                ///  MEMSETx
                MEMSETx: u8 = 0xFC,
                ///  MEMWAITx
                MEMWAITx: u8 = 0xFC,
                ///  MEMHOLDx
                MEMHOLDx: u8 = 0xFC,
                ///  MEMHIZx
                MEMHIZx: u8 = 0xFC,
            }),
            ///  Attribute memory space timing register 3
            PATT: mmio.Mmio(packed struct(u32) { // reset_value: 0xFCFCFCFC
                ///  ATTSETx
                ATTSETx: u8 = 0xFC,
                ///  ATTWAITx
                ATTWAITx: u8 = 0xFC,
                ///  ATTHOLDx
                ATTHOLDx: u8 = 0xFC,
                ///  ATTHIZx
                ATTHIZx: u8 = 0xFC,
            }),
            reserved148: [4]u8,
            ///  ECC result register 3
            ECCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ECCx
                ECCx: u32 = 0x0,
            }),
            reserved260: [108]u8,
            ///  SRAM/NOR-Flash write timing registers 1
            BWTR1: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFF
                ///  ADDSET
                ADDSET: u4 = 0xF,
                ///  ADDHLD
                ADDHLD: u4 = 0xF,
                ///  DATAST
                DATAST: u8 = 0xFF,
                ///  BUSTURN
                BUSTURN: u4 = 0xF,
                reserved28: u8 = 0xFF,
                ///  ACCMOD
                ACCMOD: u2 = 0x0,
                ///  DATAHLD
                DATAHLD: u2 = 0x0,
            }),
            reserved268: [4]u8,
            ///  SRAM/NOR-Flash write timing registers 2
            BWTR2: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFF
                ///  ADDSET
                ADDSET: u4 = 0xF,
                ///  ADDHLD
                ADDHLD: u4 = 0xF,
                ///  DATAST
                DATAST: u8 = 0xFF,
                ///  BUSTURN
                BUSTURN: u4 = 0xF,
                reserved28: u8 = 0xFF,
                ///  ACCMOD
                ACCMOD: u2 = 0x0,
                ///  DATAHLD
                DATAHLD: u2 = 0x0,
            }),
            reserved276: [4]u8,
            ///  SRAM/NOR-Flash write timing registers 3
            BWTR3: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFF
                ///  ADDSET
                ADDSET: u4 = 0xF,
                ///  ADDHLD
                ADDHLD: u4 = 0xF,
                ///  DATAST
                DATAST: u8 = 0xFF,
                ///  BUSTURN
                BUSTURN: u4 = 0xF,
                reserved28: u8 = 0xFF,
                ///  ACCMOD
                ACCMOD: u2 = 0x0,
                ///  DATAHLD
                DATAHLD: u2 = 0x0,
            }),
            reserved284: [4]u8,
            ///  SRAM/NOR-Flash write timing registers 4
            BWTR4: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFFFFF
                ///  ADDSET
                ADDSET: u4 = 0xF,
                ///  ADDHLD
                ADDHLD: u4 = 0xF,
                ///  DATAST
                DATAST: u8 = 0xFF,
                ///  BUSTURN
                BUSTURN: u4 = 0xF,
                reserved28: u8 = 0xFF,
                ///  ACCMOD
                ACCMOD: u2 = 0x0,
                ///  DATAHLD
                DATAHLD: u2 = 0x0,
            }),
        };

        ///  DMA controller
        pub const DMA1 = extern struct {
            ///  interrupt status register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  GIF1
                GIF1: u1 = 0x0,
                ///  TCIF1
                TCIF1: u1 = 0x0,
                ///  HTIF1
                HTIF1: u1 = 0x0,
                ///  TEIF1
                TEIF1: u1 = 0x0,
                ///  GIF2
                GIF2: u1 = 0x0,
                ///  TCIF2
                TCIF2: u1 = 0x0,
                ///  HTIF2
                HTIF2: u1 = 0x0,
                ///  TEIF2
                TEIF2: u1 = 0x0,
                ///  GIF3
                GIF3: u1 = 0x0,
                ///  TCIF3
                TCIF3: u1 = 0x0,
                ///  HTIF3
                HTIF3: u1 = 0x0,
                ///  TEIF3
                TEIF3: u1 = 0x0,
                ///  GIF4
                GIF4: u1 = 0x0,
                ///  TCIF4
                TCIF4: u1 = 0x0,
                ///  HTIF4
                HTIF4: u1 = 0x0,
                ///  TEIF4
                TEIF4: u1 = 0x0,
                ///  GIF5
                GIF5: u1 = 0x0,
                ///  TCIF5
                TCIF5: u1 = 0x0,
                ///  HTIF5
                HTIF5: u1 = 0x0,
                ///  TEIF5
                TEIF5: u1 = 0x0,
                ///  GIF6
                GIF6: u1 = 0x0,
                ///  TCIF6
                TCIF6: u1 = 0x0,
                ///  HTIF6
                HTIF6: u1 = 0x0,
                ///  TEIF6
                TEIF6: u1 = 0x0,
                ///  GIF7
                GIF7: u1 = 0x0,
                ///  TCIF7
                TCIF7: u1 = 0x0,
                ///  HTIF7
                HTIF7: u1 = 0x0,
                ///  TEIF7
                TEIF7: u1 = 0x0,
                ///  GIF8
                GIF8: u1 = 0x0,
                ///  TCIF8
                TCIF8: u1 = 0x0,
                ///  HTIF8
                HTIF8: u1 = 0x0,
                ///  TEIF8
                TEIF8: u1 = 0x0,
            }),
            ///  DMA interrupt flag clear register
            IFCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  GIF1
                GIF1: u1 = 0x0,
                ///  TCIF1
                TCIF1: u1 = 0x0,
                ///  HTIF1
                HTIF1: u1 = 0x0,
                ///  TEIF1
                TEIF1: u1 = 0x0,
                ///  GIF2
                GIF2: u1 = 0x0,
                ///  TCIF2
                TCIF2: u1 = 0x0,
                ///  HTIF2
                HTIF2: u1 = 0x0,
                ///  TEIF2
                TEIF2: u1 = 0x0,
                ///  GIF3
                GIF3: u1 = 0x0,
                ///  TCIF3
                TCIF3: u1 = 0x0,
                ///  HTIF3
                HTIF3: u1 = 0x0,
                ///  TEIF3
                TEIF3: u1 = 0x0,
                ///  GIF4
                GIF4: u1 = 0x0,
                ///  TCIF4
                TCIF4: u1 = 0x0,
                ///  HTIF4
                HTIF4: u1 = 0x0,
                ///  TEIF4
                TEIF4: u1 = 0x0,
                ///  GIF5
                GIF5: u1 = 0x0,
                ///  TCIF5
                TCIF5: u1 = 0x0,
                ///  HTIF5
                HTIF5: u1 = 0x0,
                ///  TEIF5
                TEIF5: u1 = 0x0,
                ///  GIF6
                GIF6: u1 = 0x0,
                ///  TCIF6
                TCIF6: u1 = 0x0,
                ///  HTIF6
                HTIF6: u1 = 0x0,
                ///  TEIF6
                TEIF6: u1 = 0x0,
                ///  GIF7
                GIF7: u1 = 0x0,
                ///  TCIF7
                TCIF7: u1 = 0x0,
                ///  HTIF7
                HTIF7: u1 = 0x0,
                ///  TEIF7
                TEIF7: u1 = 0x0,
                ///  GIF8
                GIF8: u1 = 0x0,
                ///  TCIF8
                TCIF8: u1 = 0x0,
                ///  HTIF8
                HTIF8: u1 = 0x0,
                ///  TEIF8
                TEIF8: u1 = 0x0,
            }),
            ///  DMA channel 1 configuration register
            CCR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  channel enable
                EN: u1 = 0x0,
                ///  TCIE
                TCIE: u1 = 0x0,
                ///  HTIE
                HTIE: u1 = 0x0,
                ///  TEIE
                TEIE: u1 = 0x0,
                ///  DIR
                DIR: u1 = 0x0,
                ///  CIRC
                CIRC: u1 = 0x0,
                ///  PINC
                PINC: u1 = 0x0,
                ///  MINC
                MINC: u1 = 0x0,
                ///  PSIZE
                PSIZE: u2 = 0x0,
                ///  MSIZE
                MSIZE: u2 = 0x0,
                ///  PL
                PL: u2 = 0x0,
                ///  MEM2MEM
                MEM2MEM: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  channel x number of data to transfer register
            CNDTR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Number of data items to transfer
                NDT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DMA channel x peripheral address register
            CPAR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Peripheral address
                PA: u32 = 0x0,
            }),
            ///  DMA channel x memory address register
            CMAR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory 1 address (used in case of Double buffer mode)
                MA: u32 = 0x0,
            }),
            reserved28: [4]u8,
            ///  DMA channel 2 configuration register
            CCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  channel enable
                EN: u1 = 0x0,
                ///  TCIE
                TCIE: u1 = 0x0,
                ///  HTIE
                HTIE: u1 = 0x0,
                ///  TEIE
                TEIE: u1 = 0x0,
                ///  DIR
                DIR: u1 = 0x0,
                ///  CIRC
                CIRC: u1 = 0x0,
                ///  PINC
                PINC: u1 = 0x0,
                ///  MINC
                MINC: u1 = 0x0,
                ///  PSIZE
                PSIZE: u2 = 0x0,
                ///  MSIZE
                MSIZE: u2 = 0x0,
                ///  PL
                PL: u2 = 0x0,
                ///  MEM2MEM
                MEM2MEM: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  channel x number of data to transfer register
            CNDTR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Number of data items to transfer
                NDT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DMA channel x peripheral address register
            CPAR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Peripheral address
                PA: u32 = 0x0,
            }),
            ///  DMA channel x memory address register
            CMAR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory 1 address (used in case of Double buffer mode)
                MA: u32 = 0x0,
            }),
            reserved48: [4]u8,
            ///  DMA channel 3 configuration register
            CCR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  channel enable
                EN: u1 = 0x0,
                ///  TCIE
                TCIE: u1 = 0x0,
                ///  HTIE
                HTIE: u1 = 0x0,
                ///  TEIE
                TEIE: u1 = 0x0,
                ///  DIR
                DIR: u1 = 0x0,
                ///  CIRC
                CIRC: u1 = 0x0,
                ///  PINC
                PINC: u1 = 0x0,
                ///  MINC
                MINC: u1 = 0x0,
                ///  PSIZE
                PSIZE: u2 = 0x0,
                ///  MSIZE
                MSIZE: u2 = 0x0,
                ///  PL
                PL: u2 = 0x0,
                ///  MEM2MEM
                MEM2MEM: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  channel x number of data to transfer register
            CNDTR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Number of data items to transfer
                NDT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DMA channel x peripheral address register
            CPAR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Peripheral address
                PA: u32 = 0x0,
            }),
            ///  DMA channel x memory address register
            CMAR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory 1 address (used in case of Double buffer mode)
                MA: u32 = 0x0,
            }),
            reserved68: [4]u8,
            ///  DMA channel 3 configuration register
            CCR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  channel enable
                EN: u1 = 0x0,
                ///  TCIE
                TCIE: u1 = 0x0,
                ///  HTIE
                HTIE: u1 = 0x0,
                ///  TEIE
                TEIE: u1 = 0x0,
                ///  DIR
                DIR: u1 = 0x0,
                ///  CIRC
                CIRC: u1 = 0x0,
                ///  PINC
                PINC: u1 = 0x0,
                ///  MINC
                MINC: u1 = 0x0,
                ///  PSIZE
                PSIZE: u2 = 0x0,
                ///  MSIZE
                MSIZE: u2 = 0x0,
                ///  PL
                PL: u2 = 0x0,
                ///  MEM2MEM
                MEM2MEM: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  channel x number of data to transfer register
            CNDTR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Number of data items to transfer
                NDT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DMA channel x peripheral address register
            CPAR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Peripheral address
                PA: u32 = 0x0,
            }),
            ///  DMA channel x memory address register
            CMAR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory 1 address (used in case of Double buffer mode)
                MA: u32 = 0x0,
            }),
            reserved88: [4]u8,
            ///  DMA channel 4 configuration register
            CCR5: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  channel enable
                EN: u1 = 0x0,
                ///  TCIE
                TCIE: u1 = 0x0,
                ///  HTIE
                HTIE: u1 = 0x0,
                ///  TEIE
                TEIE: u1 = 0x0,
                ///  DIR
                DIR: u1 = 0x0,
                ///  CIRC
                CIRC: u1 = 0x0,
                ///  PINC
                PINC: u1 = 0x0,
                ///  MINC
                MINC: u1 = 0x0,
                ///  PSIZE
                PSIZE: u2 = 0x0,
                ///  MSIZE
                MSIZE: u2 = 0x0,
                ///  PL
                PL: u2 = 0x0,
                ///  MEM2MEM
                MEM2MEM: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  channel x number of data to transfer register
            CNDTR5: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Number of data items to transfer
                NDT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DMA channel x peripheral address register
            CPAR5: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Peripheral address
                PA: u32 = 0x0,
            }),
            ///  DMA channel x memory address register
            CMAR5: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory 1 address (used in case of Double buffer mode)
                MA: u32 = 0x0,
            }),
            reserved108: [4]u8,
            ///  DMA channel 5 configuration register
            CCR6: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  channel enable
                EN: u1 = 0x0,
                ///  TCIE
                TCIE: u1 = 0x0,
                ///  HTIE
                HTIE: u1 = 0x0,
                ///  TEIE
                TEIE: u1 = 0x0,
                ///  DIR
                DIR: u1 = 0x0,
                ///  CIRC
                CIRC: u1 = 0x0,
                ///  PINC
                PINC: u1 = 0x0,
                ///  MINC
                MINC: u1 = 0x0,
                ///  PSIZE
                PSIZE: u2 = 0x0,
                ///  MSIZE
                MSIZE: u2 = 0x0,
                ///  PL
                PL: u2 = 0x0,
                ///  MEM2MEM
                MEM2MEM: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  channel x number of data to transfer register
            CNDTR6: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Number of data items to transfer
                NDT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DMA channel x peripheral address register
            CPAR6: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Peripheral address
                PA: u32 = 0x0,
            }),
            ///  DMA channel x memory address register
            CMAR6: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory 1 address (used in case of Double buffer mode)
                MA: u32 = 0x0,
            }),
            reserved128: [4]u8,
            ///  DMA channel 6 configuration register
            CCR7: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  channel enable
                EN: u1 = 0x0,
                ///  TCIE
                TCIE: u1 = 0x0,
                ///  HTIE
                HTIE: u1 = 0x0,
                ///  TEIE
                TEIE: u1 = 0x0,
                ///  DIR
                DIR: u1 = 0x0,
                ///  CIRC
                CIRC: u1 = 0x0,
                ///  PINC
                PINC: u1 = 0x0,
                ///  MINC
                MINC: u1 = 0x0,
                ///  PSIZE
                PSIZE: u2 = 0x0,
                ///  MSIZE
                MSIZE: u2 = 0x0,
                ///  PL
                PL: u2 = 0x0,
                ///  MEM2MEM
                MEM2MEM: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  channel x number of data to transfer register
            CNDTR7: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Number of data items to transfer
                NDT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DMA channel x peripheral address register
            CPAR7: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Peripheral address
                PA: u32 = 0x0,
            }),
            ///  DMA channel x memory address register
            CMAR7: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory 1 address (used in case of Double buffer mode)
                MA: u32 = 0x0,
            }),
            reserved148: [4]u8,
            ///  DMA channel 7 configuration register
            CCR8: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  channel enable
                EN: u1 = 0x0,
                ///  TCIE
                TCIE: u1 = 0x0,
                ///  HTIE
                HTIE: u1 = 0x0,
                ///  TEIE
                TEIE: u1 = 0x0,
                ///  DIR
                DIR: u1 = 0x0,
                ///  CIRC
                CIRC: u1 = 0x0,
                ///  PINC
                PINC: u1 = 0x0,
                ///  MINC
                MINC: u1 = 0x0,
                ///  PSIZE
                PSIZE: u2 = 0x0,
                ///  MSIZE
                MSIZE: u2 = 0x0,
                ///  PL
                PL: u2 = 0x0,
                ///  MEM2MEM
                MEM2MEM: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  channel x number of data to transfer register
            CNDTR8: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Number of data items to transfer
                NDT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DMA channel x peripheral address register
            CPAR8: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Peripheral address
                PA: u32 = 0x0,
            }),
            ///  DMA channel x memory address register
            CMAR8: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory 1 address (used in case of Double buffer mode)
                MA: u32 = 0x0,
            }),
        };

        ///  Analog-to-Digital Converter
        pub const ADC12_Common = extern struct {
            ///  ADC Common status register
            CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADDRDY_MST
                ADDRDY_MST: u1 = 0x0,
                ///  EOSMP_MST
                EOSMP_MST: u1 = 0x0,
                ///  EOC_MST
                EOC_MST: u1 = 0x0,
                ///  EOS_MST
                EOS_MST: u1 = 0x0,
                ///  OVR_MST
                OVR_MST: u1 = 0x0,
                ///  JEOC_MST
                JEOC_MST: u1 = 0x0,
                ///  JEOS_MST
                JEOS_MST: u1 = 0x0,
                ///  AWD1_MST
                AWD1_MST: u1 = 0x0,
                ///  AWD2_MST
                AWD2_MST: u1 = 0x0,
                ///  AWD3_MST
                AWD3_MST: u1 = 0x0,
                ///  JQOVF_MST
                JQOVF_MST: u1 = 0x0,
                reserved16: u5 = 0x0,
                ///  ADRDY_SLV
                ADRDY_SLV: u1 = 0x0,
                ///  EOSMP_SLV
                EOSMP_SLV: u1 = 0x0,
                ///  End of regular conversion of the slave ADC
                EOC_SLV: u1 = 0x0,
                ///  End of regular sequence flag of the slave ADC
                EOS_SLV: u1 = 0x0,
                ///  Overrun flag of the slave ADC
                OVR_SLV: u1 = 0x0,
                ///  End of injected conversion flag of the slave ADC
                JEOC_SLV: u1 = 0x0,
                ///  End of injected sequence flag of the slave ADC
                JEOS_SLV: u1 = 0x0,
                ///  Analog watchdog 1 flag of the slave ADC
                AWD1_SLV: u1 = 0x0,
                ///  Analog watchdog 2 flag of the slave ADC
                AWD2_SLV: u1 = 0x0,
                ///  Analog watchdog 3 flag of the slave ADC
                AWD3_SLV: u1 = 0x0,
                ///  Injected Context Queue Overflow flag of the slave ADC
                JQOVF_SLV: u1 = 0x0,
                padding: u5 = 0x0,
            }),
            reserved8: [4]u8,
            ///  ADC common control register
            CCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dual ADC mode selection
                DUAL: u5 = 0x0,
                reserved8: u3 = 0x0,
                ///  Delay between 2 sampling phases
                DELAY: u4 = 0x0,
                reserved13: u1 = 0x0,
                ///  DMA configuration (for multi-ADC mode)
                DMACFG: u1 = 0x0,
                ///  Direct memory access mode for multi ADC mode
                MDMA: u2 = 0x0,
                ///  ADC clock mode
                CKMODE: u2 = 0x0,
                ///  ADC prescaler
                PRESC: u4 = 0x0,
                ///  VREFINT enable
                VREFEN: u1 = 0x0,
                ///  CH17 selection
                CH17SEL: u1 = 0x0,
                ///  CH18 selection
                CH18SEL: u1 = 0x0,
                padding: u7 = 0x0,
            }),
            ///  ADC common regular data register for dual and triple modes
            CDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Regular data of the master ADC
                RDATA_MST: u16 = 0x0,
                ///  Regular data of the slave ADC
                RDATA_SLV: u16 = 0x0,
            }),
        };

        ///  DMAMUX
        pub const DMAMUX = extern struct {
            ///  DMAMux - DMA request line multiplexer channel x control register
            C0CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C1CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C2CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C3CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C4CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C5CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C6CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C7CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C8CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C9CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C10CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C11CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C12CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C13CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C14CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  DMAMux - DMA request line multiplexer channel x control register
            C15CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Input DMA request line selected
                DMAREQ_ID: u7 = 0x0,
                reserved8: u1 = 0x0,
                ///  Interrupt enable at synchronization event overrun
                SOIE: u1 = 0x0,
                ///  Event generation enable/disable
                EGE: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  Synchronous operating mode enable/disable
                SE: u1 = 0x0,
                ///  Synchronization event type selector Defines the synchronization event on the selected synchronization input:
                SPOL: u2 = 0x0,
                ///  Number of DMA requests to forward Defines the number of DMA requests forwarded before output event is generated. In synchronous mode, it also defines the number of DMA requests to forward after a synchronization event, then stop forwarding. The actual number of DMA requests forwarded is NBREQ+1. Note: This field can only be written when both SE and EGE bits are reset.
                NBREQ: u5 = 0x0,
                ///  Synchronization input selected
                SYNC_ID: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            reserved128: [64]u8,
            ///  DMAMUX request line multiplexer interrupt channel status register
            CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Synchronization overrun event flag
                SOF: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  DMAMUX request line multiplexer interrupt clear flag register
            CFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Clear synchronization overrun event flag
                CSOF: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved256: [120]u8,
            ///  DMAMux - DMA request generator channel x control register
            RG0CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA request trigger input selected
                SIG_ID: u5 = 0x0,
                reserved8: u3 = 0x0,
                ///  Interrupt enable at trigger event overrun
                OIE: u1 = 0x0,
                reserved16: u7 = 0x0,
                ///  DMA request generator channel enable/disable
                GE: u1 = 0x0,
                ///  DMA request generator trigger event type selection Defines the trigger event on the selected DMA request trigger input
                GPOL: u2 = 0x0,
                ///  Number of DMA requests to generate Defines the number of DMA requests generated after a trigger event, then stop generating. The actual number of generated DMA requests is GNBREQ+1. Note: This field can only be written when GE bit is reset.
                GNBREQ: u5 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  DMAMux - DMA request generator channel x control register
            RG1CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA request trigger input selected
                SIG_ID: u5 = 0x0,
                reserved8: u3 = 0x0,
                ///  Interrupt enable at trigger event overrun
                OIE: u1 = 0x0,
                reserved16: u7 = 0x0,
                ///  DMA request generator channel enable/disable
                GE: u1 = 0x0,
                ///  DMA request generator trigger event type selection Defines the trigger event on the selected DMA request trigger input
                GPOL: u2 = 0x0,
                ///  Number of DMA requests to generate Defines the number of DMA requests generated after a trigger event, then stop generating. The actual number of generated DMA requests is GNBREQ+1. Note: This field can only be written when GE bit is reset.
                GNBREQ: u5 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  DMAMux - DMA request generator channel x control register
            RG2CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA request trigger input selected
                SIG_ID: u5 = 0x0,
                reserved8: u3 = 0x0,
                ///  Interrupt enable at trigger event overrun
                OIE: u1 = 0x0,
                reserved16: u7 = 0x0,
                ///  DMA request generator channel enable/disable
                GE: u1 = 0x0,
                ///  DMA request generator trigger event type selection Defines the trigger event on the selected DMA request trigger input
                GPOL: u2 = 0x0,
                ///  Number of DMA requests to generate Defines the number of DMA requests generated after a trigger event, then stop generating. The actual number of generated DMA requests is GNBREQ+1. Note: This field can only be written when GE bit is reset.
                GNBREQ: u5 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  DMAMux - DMA request generator channel x control register
            RG3CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DMA request trigger input selected
                SIG_ID: u5 = 0x0,
                reserved8: u3 = 0x0,
                ///  Interrupt enable at trigger event overrun
                OIE: u1 = 0x0,
                reserved16: u7 = 0x0,
                ///  DMA request generator channel enable/disable
                GE: u1 = 0x0,
                ///  DMA request generator trigger event type selection Defines the trigger event on the selected DMA request trigger input
                GPOL: u2 = 0x0,
                ///  Number of DMA requests to generate Defines the number of DMA requests generated after a trigger event, then stop generating. The actual number of generated DMA requests is GNBREQ+1. Note: This field can only be written when GE bit is reset.
                GNBREQ: u5 = 0x0,
                padding: u8 = 0x0,
            }),
            reserved320: [48]u8,
            ///  DMAMux - DMA request generator status register
            RGSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Trigger event overrun flag The flag is set when a trigger event occurs on DMA request generator channel x, while the DMA request generator counter value is lower than GNBREQ. The flag is cleared by writing 1 to the corresponding COFx bit in DMAMUX_RGCFR register.
                OF: u4 = 0x0,
                padding: u28 = 0x0,
            }),
            ///  DMAMux - DMA request generator clear flag register
            RGCFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Clear trigger event overrun flag Upon setting, this bit clears the corresponding overrun flag OFx in the DMAMUX_RGCSR register.
                COF: u4 = 0x0,
                padding: u28 = 0x0,
            }),
        };

        ///  System configuration controller
        pub const SYSCFG = extern struct {
            ///  Remap Memory register
            MEMRMP: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Memory mapping selection
                MEM_MODE: u3 = 0x0,
                reserved8: u5 = 0x0,
                ///  User Flash Bank mode
                FB_mode: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  peripheral mode configuration register
            CFGR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x7C000001
                reserved8: u8 = 0x1,
                ///  BOOSTEN
                BOOSTEN: u1 = 0x0,
                ///  GPIO analog switch control voltage selection
                ANASWVDD: u1 = 0x0,
                reserved16: u6 = 0x0,
                ///  FM+ drive capability on PB6
                I2C_PB6_FMP: u1 = 0x0,
                ///  FM+ drive capability on PB6
                I2C_PB7_FMP: u1 = 0x0,
                ///  FM+ drive capability on PB6
                I2C_PB8_FMP: u1 = 0x0,
                ///  FM+ drive capability on PB6
                I2C_PB9_FMP: u1 = 0x0,
                ///  I2C1 FM+ drive capability enable
                I2C1_FMP: u1 = 0x0,
                ///  I2C1 FM+ drive capability enable
                I2C2_FMP: u1 = 0x0,
                ///  I2C1 FM+ drive capability enable
                I2C3_FMP: u1 = 0x0,
                ///  I2C1 FM+ drive capability enable
                I2C4_FMP: u1 = 0x0,
                reserved26: u2 = 0x0,
                ///  FPU Interrupts Enable
                FPU_IE: u6 = 0x1F,
            }),
            ///  external interrupt configuration register 1
            EXTICR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EXTI x configuration (x = 0 to 3)
                EXTI0: u4 = 0x0,
                ///  EXTI x configuration (x = 0 to 3)
                EXTI1: u4 = 0x0,
                ///  EXTI x configuration (x = 0 to 3)
                EXTI2: u4 = 0x0,
                ///  EXTI x configuration (x = 0 to 3)
                EXTI3: u4 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  external interrupt configuration register 2
            EXTICR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EXTI x configuration (x = 4 to 7)
                EXTI4: u4 = 0x0,
                ///  EXTI x configuration (x = 4 to 7)
                EXTI5: u4 = 0x0,
                ///  EXTI x configuration (x = 4 to 7)
                EXTI6: u4 = 0x0,
                ///  EXTI x configuration (x = 4 to 7)
                EXTI7: u4 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  external interrupt configuration register 3
            EXTICR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EXTI x configuration (x = 8 to 11)
                EXTI8: u4 = 0x0,
                ///  EXTI x configuration (x = 8 to 11)
                EXTI9: u4 = 0x0,
                ///  EXTI10
                EXTI10: u4 = 0x0,
                ///  EXTI x configuration (x = 8 to 11)
                EXTI11: u4 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  external interrupt configuration register 4
            EXTICR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EXTI x configuration (x = 12 to 15)
                EXTI12: u4 = 0x0,
                ///  EXTI x configuration (x = 12 to 15)
                EXTI13: u4 = 0x0,
                ///  EXTI x configuration (x = 12 to 15)
                EXTI14: u4 = 0x0,
                ///  EXTI x configuration (x = 12 to 15)
                EXTI15: u4 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  CCM SRAM control and status register
            SCSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CCM SRAM Erase
                CCMER: u1 = 0x0,
                ///  CCM SRAM busy by erase operation
                CCMBSY: u1 = 0x0,
                padding: u30 = 0x0,
            }),
            ///  configuration register 2
            CFGR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Core Lockup Lock
                CLL: u1 = 0x0,
                ///  SRAM Parity Lock
                SPL: u1 = 0x0,
                ///  PVD Lock
                PVDL: u1 = 0x0,
                ///  ECC Lock
                ECCL: u1 = 0x0,
                reserved8: u4 = 0x0,
                ///  SRAM Parity Flag
                SPF: u1 = 0x0,
                padding: u23 = 0x0,
            }),
            ///  SRAM Write protection register 1
            SWPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Write protection
                Page0_WP: u1 = 0x0,
                ///  Write protection
                Page1_WP: u1 = 0x0,
                ///  Write protection
                Page2_WP: u1 = 0x0,
                ///  Write protection
                Page3_WP: u1 = 0x0,
                ///  Write protection
                Page4_WP: u1 = 0x0,
                ///  Write protection
                Page5_WP: u1 = 0x0,
                ///  Write protection
                Page6_WP: u1 = 0x0,
                ///  Write protection
                Page7_WP: u1 = 0x0,
                ///  Write protection
                Page8_WP: u1 = 0x0,
                ///  Write protection
                Page9_WP: u1 = 0x0,
                ///  Write protection
                Page10_WP: u1 = 0x0,
                ///  Write protection
                Page11_WP: u1 = 0x0,
                ///  Write protection
                Page12_WP: u1 = 0x0,
                ///  Write protection
                Page13_WP: u1 = 0x0,
                ///  Write protection
                Page14_WP: u1 = 0x0,
                ///  Write protection
                Page15_WP: u1 = 0x0,
                ///  Write protection
                Page16_WP: u1 = 0x0,
                ///  Write protection
                Page17_WP: u1 = 0x0,
                ///  Write protection
                Page18_WP: u1 = 0x0,
                ///  Write protection
                Page19_WP: u1 = 0x0,
                ///  Write protection
                Page20_WP: u1 = 0x0,
                ///  Write protection
                Page21_WP: u1 = 0x0,
                ///  Write protection
                Page22_WP: u1 = 0x0,
                ///  Write protection
                Page23_WP: u1 = 0x0,
                ///  Write protection
                Page24_WP: u1 = 0x0,
                ///  Write protection
                Page25_WP: u1 = 0x0,
                ///  Write protection
                Page26_WP: u1 = 0x0,
                ///  Write protection
                Page27_WP: u1 = 0x0,
                ///  Write protection
                Page28_WP: u1 = 0x0,
                ///  Write protection
                Page29_WP: u1 = 0x0,
                ///  Write protection
                Page30_WP: u1 = 0x0,
                ///  Write protection
                Page31_WP: u1 = 0x0,
            }),
            ///  SRAM2 Key Register
            SKR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRAM2 Key for software erase
                KEY: u8 = 0x0,
                padding: u24 = 0x0,
            }),
        };

        ///  Voltage reference buffer
        pub const VREFBUF = extern struct {
            ///  VREF_BUF Control and Status Register
            VREFBUF_CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x2
                ///  Enable Voltage Reference
                ENVR: u1 = 0x0,
                ///  High impedence mode for the VREF_BUF
                HIZ: u1 = 0x1,
                reserved3: u1 = 0x0,
                ///  Voltage reference buffer ready
                VRR: u1 = 0x0,
                ///  Voltage reference scale
                VRS: u2 = 0x0,
                padding: u26 = 0x0,
            }),
            ///  VREF_BUF Calibration Control Register
            VREFBUF_CCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Trimming code
                TRIM: u6 = 0x0,
                padding: u26 = 0x0,
            }),
        };

        ///  Comparator control and status register
        pub const COMP = extern struct {
            ///  Comparator control/status register
            COMP_C1CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EN
                EN: u1 = 0x0,
                ///  COMP_DEGLITCH_EN
                COMP_DEGLITCH_EN: u1 = 0x0,
                reserved4: u2 = 0x0,
                ///  INMSEL
                INMSEL: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  INPSEL
                INPSEL: u1 = 0x0,
                reserved15: u6 = 0x0,
                ///  POL
                POL: u1 = 0x0,
                ///  HYST
                HYST: u3 = 0x0,
                ///  BLANKSEL
                BLANKSEL: u3 = 0x0,
                ///  BRGEN
                BRGEN: u1 = 0x0,
                ///  SCALEN
                SCALEN: u1 = 0x0,
                reserved30: u6 = 0x0,
                ///  VALUE
                VALUE: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  Comparator control/status register
            COMP_C2CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EN
                EN: u1 = 0x0,
                ///  COMP_DEGLITCH_EN
                COMP_DEGLITCH_EN: u1 = 0x0,
                reserved4: u2 = 0x0,
                ///  INMSEL
                INMSEL: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  INPSEL
                INPSEL: u1 = 0x0,
                reserved15: u6 = 0x0,
                ///  POL
                POL: u1 = 0x0,
                ///  HYST
                HYST: u3 = 0x0,
                ///  BLANKSEL
                BLANKSEL: u3 = 0x0,
                ///  BRGEN
                BRGEN: u1 = 0x0,
                ///  SCALEN
                SCALEN: u1 = 0x0,
                reserved30: u6 = 0x0,
                ///  VALUE
                VALUE: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  Comparator control/status register
            COMP_C3CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EN
                EN: u1 = 0x0,
                ///  COMP_DEGLITCH_EN
                COMP_DEGLITCH_EN: u1 = 0x0,
                reserved4: u2 = 0x0,
                ///  INMSEL
                INMSEL: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  INPSEL
                INPSEL: u1 = 0x0,
                reserved15: u6 = 0x0,
                ///  POL
                POL: u1 = 0x0,
                ///  HYST
                HYST: u3 = 0x0,
                ///  BLANKSEL
                BLANKSEL: u3 = 0x0,
                ///  BRGEN
                BRGEN: u1 = 0x0,
                ///  SCALEN
                SCALEN: u1 = 0x0,
                reserved30: u6 = 0x0,
                ///  VALUE
                VALUE: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            reserved18: [6]u8,
            ///  Comparator control/status register
            COMP_C4CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EN
                EN: u1 = 0x0,
                ///  COMP_DEGLITCH_EN
                COMP_DEGLITCH_EN: u1 = 0x0,
                reserved4: u2 = 0x0,
                ///  INMSEL
                INMSEL: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  INPSEL
                INPSEL: u1 = 0x0,
                reserved15: u6 = 0x0,
                ///  POL
                POL: u1 = 0x0,
                ///  HYST
                HYST: u3 = 0x0,
                ///  BLANKSEL
                BLANKSEL: u3 = 0x0,
                ///  BRGEN
                BRGEN: u1 = 0x0,
                ///  SCALEN
                SCALEN: u1 = 0x0,
                reserved30: u6 = 0x0,
                ///  VALUE
                VALUE: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  Comparator control/status register
            COMP_C5CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EN
                EN: u1 = 0x0,
                ///  COMP_DEGLITCH_EN
                COMP_DEGLITCH_EN: u1 = 0x0,
                reserved4: u2 = 0x0,
                ///  INMSEL
                INMSEL: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  INPSEL
                INPSEL: u1 = 0x0,
                reserved15: u6 = 0x0,
                ///  POL
                POL: u1 = 0x0,
                ///  HYST
                HYST: u3 = 0x0,
                ///  BLANKSEL
                BLANKSEL: u3 = 0x0,
                ///  BRGEN
                BRGEN: u1 = 0x0,
                ///  SCALEN
                SCALEN: u1 = 0x0,
                reserved30: u6 = 0x0,
                ///  VALUE
                VALUE: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            reserved32: [6]u8,
            ///  Comparator control/status register
            COMP_C6CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EN
                EN: u1 = 0x0,
                ///  COMP_DEGLITCH_EN
                COMP_DEGLITCH_EN: u1 = 0x0,
                reserved4: u2 = 0x0,
                ///  INMSEL
                INMSEL: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  INPSEL
                INPSEL: u1 = 0x0,
                reserved15: u6 = 0x0,
                ///  POL
                POL: u1 = 0x0,
                ///  HYST
                HYST: u3 = 0x0,
                ///  BLANKSEL
                BLANKSEL: u3 = 0x0,
                ///  BRGEN
                BRGEN: u1 = 0x0,
                ///  SCALEN
                SCALEN: u1 = 0x0,
                reserved30: u6 = 0x0,
                ///  VALUE
                VALUE: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  Comparator control/status register
            COMP_C7CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EN
                EN: u1 = 0x0,
                ///  COMP_DEGLITCH_EN
                COMP_DEGLITCH_EN: u1 = 0x0,
                reserved4: u2 = 0x0,
                ///  INMSEL
                INMSEL: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  INPSEL
                INPSEL: u1 = 0x0,
                reserved15: u6 = 0x0,
                ///  POL
                POL: u1 = 0x0,
                ///  HYST
                HYST: u3 = 0x0,
                ///  BLANKSEL
                BLANKSEL: u3 = 0x0,
                ///  BRGEN
                BRGEN: u1 = 0x0,
                ///  SCALEN
                SCALEN: u1 = 0x0,
                reserved30: u6 = 0x0,
                ///  VALUE
                VALUE: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
        };

        ///  Operational amplifiers
        pub const OPAMP = extern struct {
            ///  OPAMP1 control/status register
            OPAMP1_CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Operational amplifier Enable
                OPAEN: u1 = 0x0,
                ///  FORCE_VP
                FORCE_VP: u1 = 0x0,
                ///  VP_SEL
                VP_SEL: u2 = 0x0,
                ///  USERTRIM
                USERTRIM: u1 = 0x0,
                ///  VM_SEL
                VM_SEL: u2 = 0x0,
                ///  OPAHSM
                OPAHSM: u1 = 0x0,
                ///  OPAINTOEN
                OPAINTOEN: u1 = 0x0,
                reserved11: u2 = 0x0,
                ///  CALON
                CALON: u1 = 0x0,
                ///  CALSEL
                CALSEL: u2 = 0x0,
                ///  PGA_GAIN
                PGA_GAIN: u5 = 0x0,
                ///  TRIMOFFSETP
                TRIMOFFSETP: u5 = 0x0,
                ///  TRIMOFFSETN
                TRIMOFFSETN: u5 = 0x0,
                reserved30: u1 = 0x0,
                ///  CALOUT
                CALOUT: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP2 control/status register
            OPAMP2_CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Operational amplifier Enable
                OPAEN: u1 = 0x0,
                ///  FORCE_VP
                FORCE_VP: u1 = 0x0,
                ///  VP_SEL
                VP_SEL: u2 = 0x0,
                ///  USERTRIM
                USERTRIM: u1 = 0x0,
                ///  VM_SEL
                VM_SEL: u2 = 0x0,
                ///  OPAHSM
                OPAHSM: u1 = 0x0,
                ///  OPAINTOEN
                OPAINTOEN: u1 = 0x0,
                reserved11: u2 = 0x0,
                ///  CALON
                CALON: u1 = 0x0,
                ///  CALSEL
                CALSEL: u2 = 0x0,
                ///  PGA_GAIN
                PGA_GAIN: u5 = 0x0,
                ///  TRIMOFFSETP
                TRIMOFFSETP: u5 = 0x0,
                ///  TRIMOFFSETN
                TRIMOFFSETN: u5 = 0x0,
                reserved30: u1 = 0x0,
                ///  CALOUT
                CALOUT: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP3 control/status register
            OPAMP3_CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Operational amplifier Enable
                OPAEN: u1 = 0x0,
                ///  FORCE_VP
                FORCE_VP: u1 = 0x0,
                ///  VP_SEL
                VP_SEL: u2 = 0x0,
                ///  USERTRIM
                USERTRIM: u1 = 0x0,
                ///  VM_SEL
                VM_SEL: u2 = 0x0,
                ///  OPAHSM
                OPAHSM: u1 = 0x0,
                ///  OPAINTOEN
                OPAINTOEN: u1 = 0x0,
                reserved11: u2 = 0x0,
                ///  CALON
                CALON: u1 = 0x0,
                ///  CALSEL
                CALSEL: u2 = 0x0,
                ///  PGA_GAIN
                PGA_GAIN: u5 = 0x0,
                ///  TRIMOFFSETP
                TRIMOFFSETP: u5 = 0x0,
                ///  TRIMOFFSETN
                TRIMOFFSETN: u5 = 0x0,
                reserved30: u1 = 0x0,
                ///  CALOUT
                CALOUT: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP4 control/status register
            OPAMP4_CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Operational amplifier Enable
                OPAEN: u1 = 0x0,
                ///  FORCE_VP
                FORCE_VP: u1 = 0x0,
                ///  VP_SEL
                VP_SEL: u2 = 0x0,
                ///  USERTRIM
                USERTRIM: u1 = 0x0,
                ///  VM_SEL
                VM_SEL: u2 = 0x0,
                ///  OPAHSM
                OPAHSM: u1 = 0x0,
                ///  OPAINTOEN
                OPAINTOEN: u1 = 0x0,
                reserved11: u2 = 0x0,
                ///  CALON
                CALON: u1 = 0x0,
                ///  CALSEL
                CALSEL: u2 = 0x0,
                ///  PGA_GAIN
                PGA_GAIN: u5 = 0x0,
                ///  TRIMOFFSETP
                TRIMOFFSETP: u5 = 0x0,
                ///  TRIMOFFSETN
                TRIMOFFSETN: u5 = 0x0,
                reserved30: u1 = 0x0,
                ///  CALOUT
                CALOUT: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP5 control/status register
            OPAMP5_CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Operational amplifier Enable
                OPAEN: u1 = 0x0,
                ///  FORCE_VP
                FORCE_VP: u1 = 0x0,
                ///  VP_SEL
                VP_SEL: u2 = 0x0,
                ///  USERTRIM
                USERTRIM: u1 = 0x0,
                ///  VM_SEL
                VM_SEL: u2 = 0x0,
                ///  OPAHSM
                OPAHSM: u1 = 0x0,
                ///  OPAINTOEN
                OPAINTOEN: u1 = 0x0,
                reserved11: u2 = 0x0,
                ///  CALON
                CALON: u1 = 0x0,
                ///  CALSEL
                CALSEL: u2 = 0x0,
                ///  PGA_GAIN
                PGA_GAIN: u5 = 0x0,
                ///  TRIMOFFSETP
                TRIMOFFSETP: u5 = 0x0,
                ///  TRIMOFFSETN
                TRIMOFFSETN: u5 = 0x0,
                reserved30: u1 = 0x0,
                ///  CALOUT
                CALOUT: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP6 control/status register
            OPAMP6_CSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Operational amplifier Enable
                OPAEN: u1 = 0x0,
                ///  FORCE_VP
                FORCE_VP: u1 = 0x0,
                ///  VP_SEL
                VP_SEL: u2 = 0x0,
                ///  USERTRIM
                USERTRIM: u1 = 0x0,
                ///  VM_SEL
                VM_SEL: u2 = 0x0,
                ///  OPAHSM
                OPAHSM: u1 = 0x0,
                ///  OPAINTOEN
                OPAINTOEN: u1 = 0x0,
                reserved11: u2 = 0x0,
                ///  CALON
                CALON: u1 = 0x0,
                ///  CALSEL
                CALSEL: u2 = 0x0,
                ///  PGA_GAIN
                PGA_GAIN: u5 = 0x0,
                ///  TRIMOFFSETP
                TRIMOFFSETP: u5 = 0x0,
                ///  TRIMOFFSETN
                TRIMOFFSETN: u5 = 0x0,
                reserved30: u1 = 0x0,
                ///  CALOUT
                CALOUT: u1 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP1 control/status register
            OPAMP1_TCMR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  VMS_SEL
                VMS_SEL: u1 = 0x0,
                ///  VPS_SEL
                VPS_SEL: u2 = 0x0,
                ///  T1CM_EN
                T1CM_EN: u1 = 0x0,
                ///  T8CM_EN
                T8CM_EN: u1 = 0x0,
                ///  T20CM_EN
                T20CM_EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP2 control/status register
            OPAMP2_TCMR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  VMS_SEL
                VMS_SEL: u1 = 0x0,
                ///  VPS_SEL
                VPS_SEL: u2 = 0x0,
                ///  T1CM_EN
                T1CM_EN: u1 = 0x0,
                ///  T8CM_EN
                T8CM_EN: u1 = 0x0,
                ///  T20CM_EN
                T20CM_EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP3 control/status register
            OPAMP3_TCMR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  VMS_SEL
                VMS_SEL: u1 = 0x0,
                ///  VPS_SEL
                VPS_SEL: u2 = 0x0,
                ///  T1CM_EN
                T1CM_EN: u1 = 0x0,
                ///  T8CM_EN
                T8CM_EN: u1 = 0x0,
                ///  T20CM_EN
                T20CM_EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP4 control/status register
            OPAMP4_TCMR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  VMS_SEL
                VMS_SEL: u1 = 0x0,
                ///  VPS_SEL
                VPS_SEL: u2 = 0x0,
                ///  T1CM_EN
                T1CM_EN: u1 = 0x0,
                ///  T8CM_EN
                T8CM_EN: u1 = 0x0,
                ///  T20CM_EN
                T20CM_EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP5 control/status register
            OPAMP5_TCMR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  VMS_SEL
                VMS_SEL: u1 = 0x0,
                ///  VPS_SEL
                VPS_SEL: u2 = 0x0,
                ///  T1CM_EN
                T1CM_EN: u1 = 0x0,
                ///  T8CM_EN
                T8CM_EN: u1 = 0x0,
                ///  T20CM_EN
                T20CM_EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
            ///  OPAMP6 control/status register
            OPAMP6_TCMR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  VMS_SEL
                VMS_SEL: u1 = 0x0,
                ///  VPS_SEL
                VPS_SEL: u2 = 0x0,
                ///  T1CM_EN
                T1CM_EN: u1 = 0x0,
                ///  T8CM_EN
                T8CM_EN: u1 = 0x0,
                ///  T20CM_EN
                T20CM_EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  LOCK
                LOCK: u1 = 0x0,
            }),
        };

        ///  High Resolution Timer: Master Timers
        pub const HRTIM_Master = extern struct {
            ///  Master Timer Control Register
            MCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM Master Clock prescaler
                CK_PSC: u3 = 0x0,
                ///  Master Continuous mode
                CONT: u1 = 0x0,
                ///  Master Re-triggerable mode
                RETRIG: u1 = 0x0,
                ///  Half mode enable
                HALF: u1 = 0x0,
                ///  Interleaved mode
                INTLVD: u2 = 0x0,
                ///  synchronization input
                SYNC_IN: u2 = 0x0,
                ///  Synchronization Resets Master
                SYNCRSTM: u1 = 0x0,
                ///  Synchronization Starts Master
                SYNCSTRTM: u1 = 0x0,
                ///  Synchronization output
                SYNC_OUT: u2 = 0x0,
                ///  Synchronization source
                SYNC_SRC: u2 = 0x0,
                ///  Master Counter enable
                MCEN: u1 = 0x0,
                ///  Timer A counter enable
                TACEN: u1 = 0x0,
                ///  Timer B counter enable
                TBCEN: u1 = 0x0,
                ///  Timer C counter enable
                TCCEN: u1 = 0x0,
                ///  Timer D counter enable
                TDCEN: u1 = 0x0,
                ///  Timer E counter enable
                TECEN: u1 = 0x0,
                ///  Timer F counter enable
                TFCEN: u1 = 0x0,
                reserved25: u2 = 0x0,
                ///  AC Synchronization
                DACSYNC: u2 = 0x0,
                ///  Preload enable
                PREEN: u1 = 0x0,
                reserved29: u1 = 0x0,
                ///  Master Timer Repetition update
                MREPU: u1 = 0x0,
                ///  Burst DMA Update
                BRSTDMA: u2 = 0x0,
            }),
            ///  Master Timer Interrupt Status Register
            MISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Master Compare 1 Interrupt Flag
                MCMP1: u1 = 0x0,
                ///  Master Compare 2 Interrupt Flag
                MCMP2: u1 = 0x0,
                ///  Master Compare 3 Interrupt Flag
                MCMP3: u1 = 0x0,
                ///  Master Compare 4 Interrupt Flag
                MCMP4: u1 = 0x0,
                ///  Master Repetition Interrupt Flag
                MREP: u1 = 0x0,
                ///  Sync Input Interrupt Flag
                SYNC: u1 = 0x0,
                ///  Master Update Interrupt Flag
                MUPD: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  Master Timer Interrupt Clear Register
            MICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Master Compare 1 Interrupt flag clear
                MCMP1C: u1 = 0x0,
                ///  Master Compare 2 Interrupt flag clear
                MCMP2C: u1 = 0x0,
                ///  Master Compare 3 Interrupt flag clear
                MCMP3C: u1 = 0x0,
                ///  Master Compare 4 Interrupt flag clear
                MCMP4C: u1 = 0x0,
                ///  Repetition Interrupt flag clear
                MREPC: u1 = 0x0,
                ///  Sync Input Interrupt flag clear
                SYNCC: u1 = 0x0,
                ///  Master update Interrupt flag clear
                MUPDC: u1 = 0x0,
                padding: u25 = 0x0,
            }),
            ///  HRTIM Master Timer DMA / Interrupt Enable Register
            MDIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  MCMP1IE
                MCMP1IE: u1 = 0x0,
                ///  MCMP2IE
                MCMP2IE: u1 = 0x0,
                ///  MCMP3IE
                MCMP3IE: u1 = 0x0,
                ///  MCMP4IE
                MCMP4IE: u1 = 0x0,
                ///  MREPIE
                MREPIE: u1 = 0x0,
                ///  SYNCIE
                SYNCIE: u1 = 0x0,
                ///  MUPDIE
                MUPDIE: u1 = 0x0,
                reserved16: u9 = 0x0,
                ///  MCMP1DE
                MCMP1DE: u1 = 0x0,
                ///  MCMP2DE
                MCMP2DE: u1 = 0x0,
                ///  MCMP3DE
                MCMP3DE: u1 = 0x0,
                ///  MCMP4DE
                MCMP4DE: u1 = 0x0,
                ///  MREPDE
                MREPDE: u1 = 0x0,
                ///  SYNCDE
                SYNCDE: u1 = 0x0,
                ///  MUPDDE
                MUPDDE: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  Master Timer Counter Register
            MCNTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Counter value
                MCNT: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Master Timer Period Register
            MPER: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Master Timer Period value
                MPER: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  Master Timer Repetition Register
            MREP: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Master Timer Repetition counter value
                MREP: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Master Timer Compare 1 Register
            MCMP1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Master Timer Compare 1 value
                MCMP1: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            reserved36: [4]u8,
            ///  Master Timer Compare 2 Register
            MCMP2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Master Timer Compare 2 value
                MCMP2: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Master Timer Compare 3 Register
            MCMP3R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Master Timer Compare 3 value
                MCMP3: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Master Timer Compare 4 Register
            MCMP4R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Master Timer Compare 4 value
                MCMP4: u16 = 0x0,
                padding: u16 = 0x0,
            }),
        };

        ///  High Resolution Timer: TIMA
        pub const HRTIM_TIMA = extern struct {
            ///  Timerx Control Register
            TIMACR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM Timer x Clock prescaler
                CK_PSCx: u3 = 0x0,
                ///  Continuous mode
                CONT: u1 = 0x0,
                ///  Re-triggerable mode
                RETRIG: u1 = 0x0,
                ///  Half mode enable
                HALF: u1 = 0x0,
                ///  Push-Pull mode enable
                PSHPLL: u1 = 0x0,
                ///  Interleaved mode
                INTLVD: u2 = 0x0,
                ///  Re-Synchronized Update
                RSYNCU: u1 = 0x0,
                ///  Synchronization Resets Timer x
                SYNCRSTx: u1 = 0x0,
                ///  Synchronization Starts Timer x
                SYNCSTRTx: u1 = 0x0,
                ///  Delayed CMP2 mode
                DELCMP2: u2 = 0x0,
                ///  Delayed CMP4 mode
                DELCMP4: u2 = 0x0,
                ///  TFU
                TFU: u1 = 0x0,
                ///  Timer x Repetition update
                TxREPU: u1 = 0x0,
                ///  Timerx reset update
                TxRSTU: u1 = 0x0,
                reserved20: u1 = 0x0,
                ///  TBU
                TBU: u1 = 0x0,
                ///  TCU
                TCU: u1 = 0x0,
                ///  TDU
                TDU: u1 = 0x0,
                ///  TEU
                TEU: u1 = 0x0,
                ///  Master Timer update
                MSTU: u1 = 0x0,
                ///  AC Synchronization
                DACSYNC: u2 = 0x0,
                ///  Preload enable
                PREEN: u1 = 0x0,
                ///  Update Gating
                UPDGAT: u4 = 0x0,
            }),
            ///  Timerx Interrupt Status Register
            TIMAISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt Flag
                CMP1: u1 = 0x0,
                ///  Compare 2 Interrupt Flag
                CMP2: u1 = 0x0,
                ///  Compare 3 Interrupt Flag
                CMP3: u1 = 0x0,
                ///  Compare 4 Interrupt Flag
                CMP4: u1 = 0x0,
                ///  Repetition Interrupt Flag
                REP: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt Flag
                UPD: u1 = 0x0,
                ///  Capture1 Interrupt Flag
                CPT1: u1 = 0x0,
                ///  Capture2 Interrupt Flag
                CPT2: u1 = 0x0,
                ///  Output 1 Set Interrupt Flag
                SETx1: u1 = 0x0,
                ///  Output 1 Reset Interrupt Flag
                RSTx1: u1 = 0x0,
                ///  Output 2 Set Interrupt Flag
                SETx2: u1 = 0x0,
                ///  Output 2 Reset Interrupt Flag
                RSTx2: u1 = 0x0,
                ///  Reset Interrupt Flag
                RST: u1 = 0x0,
                ///  Delayed Protection Flag
                DLYPRT: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  Current Push Pull Status
                CPPSTAT: u1 = 0x0,
                ///  Idle Push Pull Status
                IPPSTAT: u1 = 0x0,
                ///  Output 1 State
                O1STAT: u1 = 0x0,
                ///  Output 2 State
                O2STAT: u1 = 0x0,
                ///  Output 1 Copy
                O1CPY: u1 = 0x0,
                ///  Output 2 Copy
                O2CPY: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  Timerx Interrupt Clear Register
            TIMAICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt flag Clear
                CMP1C: u1 = 0x0,
                ///  Compare 2 Interrupt flag Clear
                CMP2C: u1 = 0x0,
                ///  Compare 3 Interrupt flag Clear
                CMP3C: u1 = 0x0,
                ///  Compare 4 Interrupt flag Clear
                CMP4C: u1 = 0x0,
                ///  Repetition Interrupt flag Clear
                REPC: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt flag Clear
                UPDC: u1 = 0x0,
                ///  Capture1 Interrupt flag Clear
                CPT1C: u1 = 0x0,
                ///  Capture2 Interrupt flag Clear
                CPT2C: u1 = 0x0,
                ///  Output 1 Set flag Clear
                SET1xC: u1 = 0x0,
                ///  Output 1 Reset flag Clear
                RSTx1C: u1 = 0x0,
                ///  Output 2 Set flag Clear
                SET2xC: u1 = 0x0,
                ///  Output 2 Reset flag Clear
                RSTx2C: u1 = 0x0,
                ///  Reset Interrupt flag Clear
                RSTC: u1 = 0x0,
                ///  Delayed Protection Flag Clear
                DLYPRTC: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  TIMxDIER
            TIMADIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CMP1IE
                CMP1IE: u1 = 0x0,
                ///  CMP2IE
                CMP2IE: u1 = 0x0,
                ///  CMP3IE
                CMP3IE: u1 = 0x0,
                ///  CMP4IE
                CMP4IE: u1 = 0x0,
                ///  REPIE
                REPIE: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  UPDIE
                UPDIE: u1 = 0x0,
                ///  CPT1IE
                CPT1IE: u1 = 0x0,
                ///  CPT2IE
                CPT2IE: u1 = 0x0,
                ///  SET1xIE
                SET1xIE: u1 = 0x0,
                ///  RSTx1IE
                RSTx1IE: u1 = 0x0,
                ///  SETx2IE
                SETx2IE: u1 = 0x0,
                ///  RSTx2IE
                RSTx2IE: u1 = 0x0,
                ///  RSTIE
                RSTIE: u1 = 0x0,
                ///  DLYPRTIE
                DLYPRTIE: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  CMP1DE
                CMP1DE: u1 = 0x0,
                ///  CMP2DE
                CMP2DE: u1 = 0x0,
                ///  CMP3DE
                CMP3DE: u1 = 0x0,
                ///  CMP4DE
                CMP4DE: u1 = 0x0,
                ///  REPDE
                REPDE: u1 = 0x0,
                reserved22: u1 = 0x0,
                ///  UPDDE
                UPDDE: u1 = 0x0,
                ///  CPT1DE
                CPT1DE: u1 = 0x0,
                ///  CPT2DE
                CPT2DE: u1 = 0x0,
                ///  SET1xDE
                SET1xDE: u1 = 0x0,
                ///  RSTx1DE
                RSTx1DE: u1 = 0x0,
                ///  SETx2DE
                SETx2DE: u1 = 0x0,
                ///  RSTx2DE
                RSTx2DE: u1 = 0x0,
                ///  RSTDE
                RSTDE: u1 = 0x0,
                ///  DLYPRTDE
                DLYPRTDE: u1 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  Timerx Counter Register
            CNTAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Counter value
                CNTx: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Period Register
            PERAR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Timerx Period value
                PERx: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  Timerx Repetition Register
            REPAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Repetition counter value
                REPx: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Timerx Compare 1 Register
            CMP1AR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 1 Compound Register
            CMP1CAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                ///  Timerx Repetition value (aliased from HRTIM_REPx register)
                REPx: u8 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Compare 2 Register
            CMP2AR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 2 value
                CMP2x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 3 Register
            CMP3AR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 3 value
                CMP3x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 4 Register
            CMP4AR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 4 value
                CMP4x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Capture 1 Register
            CPT1AR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 1 value
                CPT1x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Capture 2 Register
            CPT2AR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 2 value
                CPT2x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Deadtime Register
            DTAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Deadtime Rising value
                DTRx: u9 = 0x0,
                ///  Sign Deadtime Rising value
                SDTRx: u1 = 0x0,
                ///  Deadtime Prescaler
                DTPRSC: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Deadtime Rising Sign Lock
                DTRSLKx: u1 = 0x0,
                ///  Deadtime Rising Lock
                DTRLKx: u1 = 0x0,
                ///  Deadtime Falling value
                DTFx: u9 = 0x0,
                ///  Sign Deadtime Falling value
                SDTFx: u1 = 0x0,
                reserved30: u4 = 0x0,
                ///  Deadtime Falling Sign Lock
                DTFSLKx: u1 = 0x0,
                ///  Deadtime Falling Lock
                DTFLKx: u1 = 0x0,
            }),
            ///  Timerx Output1 Set Register
            SETA1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Set trigger
                SST: u1 = 0x0,
                ///  Timer A resynchronizaton
                RESYNC: u1 = 0x0,
                ///  Timer A Period
                PER: u1 = 0x0,
                ///  Timer A compare 1
                CMP1: u1 = 0x0,
                ///  Timer A compare 2
                CMP2: u1 = 0x0,
                ///  Timer A compare 3
                CMP3: u1 = 0x0,
                ///  Timer A compare 4
                CMP4: u1 = 0x0,
                ///  Master Period
                MSTPER: u1 = 0x0,
                ///  Master Compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master Compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master Compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master Compare 4
                MSTCMP4: u1 = 0x0,
                ///  Timer Event 1
                TIMEVNT1: u1 = 0x0,
                ///  Timer Event 2
                TIMEVNT2: u1 = 0x0,
                ///  Timer Event 3
                TIMEVNT3: u1 = 0x0,
                ///  Timer Event 4
                TIMEVNT4: u1 = 0x0,
                ///  Timer Event 5
                TIMEVNT5: u1 = 0x0,
                ///  Timer Event 6
                TIMEVNT6: u1 = 0x0,
                ///  Timer Event 7
                TIMEVNT7: u1 = 0x0,
                ///  Timer Event 8
                TIMEVNT8: u1 = 0x0,
                ///  Timer Event 9
                TIMEVNT9: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Registers update (transfer preload to active)
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output1 Reset Register
            RSTA1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Set Register
            SETA2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SST
                SST: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Reset Register
            RSTA2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 1
            EEFAR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 1 latch
                EE1LTCH: u1 = 0x0,
                ///  External Event 1 filter
                EE1FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 2 latch
                EE2LTCH: u1 = 0x0,
                ///  External Event 2 filter
                EE2FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 3 latch
                EE3LTCH: u1 = 0x0,
                ///  External Event 3 filter
                EE3FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 4 latch
                EE4LTCH: u1 = 0x0,
                ///  External Event 4 filter
                EE4FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 5 latch
                EE5LTCH: u1 = 0x0,
                ///  External Event 5 filter
                EE5FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 2
            EEFAR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 6 latch
                EE6LTCH: u1 = 0x0,
                ///  External Event 6 filter
                EE6FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 7 latch
                EE7LTCH: u1 = 0x0,
                ///  External Event 7 filter
                EE7FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 8 latch
                EE8LTCH: u1 = 0x0,
                ///  External Event 8 filter
                EE8FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 9 latch
                EE9LTCH: u1 = 0x0,
                ///  External Event 9 filter
                EE9FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 10 latch
                EE10LTCH: u1 = 0x0,
                ///  External Event 10 filter
                EE10FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  TimerA Reset Register
            RSTAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timer A Update reset
                TIMFCMP1: u1 = 0x0,
                ///  Timer A Update reset
                UPDT: u1 = 0x0,
                ///  Timer A compare 2 reset
                CMP2: u1 = 0x0,
                ///  Timer A compare 4 reset
                CMP4: u1 = 0x0,
                ///  Master timer Period
                MSTPER: u1 = 0x0,
                ///  Master compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master compare 4
                MSTCMP4: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Timer B Compare 1
                TIMBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TIMBCMP2: u1 = 0x0,
                ///  Timer B Compare 4
                TIMBCMP4: u1 = 0x0,
                ///  Timer C Compare 1
                TIMCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TIMCCMP2: u1 = 0x0,
                ///  Timer C Compare 4
                TIMCCMP4: u1 = 0x0,
                ///  Timer D Compare 1
                TIMDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TIMDCMP2: u1 = 0x0,
                ///  Timer D Compare 4
                TIMDCMP4: u1 = 0x0,
                ///  Timer E Compare 1
                TIMECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TIMECMP2: u1 = 0x0,
                ///  Timer E Compare 4
                TIMECMP4: u1 = 0x0,
                ///  Timer F Compare 2
                TIMFCPM2: u1 = 0x0,
            }),
            ///  Timerx Chopper Register
            CHPAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx carrier frequency value
                CHPFRQ: u4 = 0x0,
                ///  Timerx chopper duty cycle value
                CHPDTY: u3 = 0x0,
                ///  STRTPW
                STRTPW: u4 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  Timerx Capture 2 Control Register
            CPT1ACR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TFCMP1
                TFCMP1: u1 = 0x0,
                ///  TFCMP2
                TFCMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  Timer E output 1 Set
                TE1SET: u1 = 0x0,
                ///  Timer E output 1 Reset
                TE1RST: u1 = 0x0,
                ///  Timer E Compare 1
                TECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TECMP2: u1 = 0x0,
            }),
            ///  CPT2xCR
            CPT2ACR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TFCMP1
                TFCMP1: u1 = 0x0,
                ///  TFCMP2
                TFCMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  Timer E output 1 Set
                TE1SET: u1 = 0x0,
                ///  Timer E output 1 Reset
                TE1RST: u1 = 0x0,
                ///  Timer E Compare 1
                TECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TECMP2: u1 = 0x0,
            }),
            ///  Timerx Output Register
            OUTAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Output 1 polarity
                POL1: u1 = 0x0,
                ///  Output 1 Idle mode
                IDLEM1: u1 = 0x0,
                ///  Output 1 Idle State
                IDLES1: u1 = 0x0,
                ///  Output 1 Fault state
                FAULT1: u2 = 0x0,
                ///  Output 1 Chopper enable
                CHP1: u1 = 0x0,
                ///  Output 1 Deadtime upon burst mode Idle entry
                DIDL1: u1 = 0x0,
                ///  Deadtime enable
                DTEN: u1 = 0x0,
                ///  Delayed Protection Enable
                DLYPRTEN: u1 = 0x0,
                ///  Delayed Protection
                DLYPRT: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Balanced Idle Automatic Resume
                BIAR: u1 = 0x0,
                reserved17: u2 = 0x0,
                ///  Output 2 polarity
                POL2: u1 = 0x0,
                ///  Output 2 Idle mode
                IDLEM2: u1 = 0x0,
                ///  Output 2 Idle State
                IDLES2: u1 = 0x0,
                ///  Output 2 Fault state
                FAULT2: u2 = 0x0,
                ///  Output 2 Chopper enable
                CHP2: u1 = 0x0,
                ///  Output 2 Deadtime upon burst mode Idle entry
                DIDL2: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Fault Register
            FLTAR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Fault 1 enable
                FLT1EN: u1 = 0x0,
                ///  Fault 2 enable
                FLT2EN: u1 = 0x0,
                ///  Fault 3 enable
                FLT3EN: u1 = 0x0,
                ///  Fault 4 enable
                FLT4EN: u1 = 0x0,
                ///  Fault 5 enable
                FLT5EN: u1 = 0x0,
                ///  Fault 6 enable
                FLT6EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  Fault sources Lock
                FLTLCK: u1 = 0x0,
            }),
            ///  HRTIM Timerx Control Register 2
            TIMACR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dual Channel DAC trigger enable
                DCDE: u1 = 0x0,
                ///  Dual Channel DAC Step trigger
                DCDS: u1 = 0x0,
                ///  Dual Channel DAC Reset trigger
                DCDR: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  Up-Down Mode
                UDM: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Roll-Over Mode
                ROM: u2 = 0x0,
                ///  Output Roll-Over Mode
                OUTROM: u2 = 0x0,
                ///  ADC Roll-Over Mode
                ADROM: u2 = 0x0,
                ///  Burst Mode Roll-Over Mode
                BMROM: u2 = 0x0,
                ///  Fault and Event Roll-Over Mode
                FEROM: u2 = 0x0,
                ///  Greater than Compare 1 PWM mode
                GTCMP1: u1 = 0x0,
                ///  Greater than Compare 3 PWM mode
                GTCMP3: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Triggered-half mode
                TRGHLF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  HRTIM Timerx External Event Filtering Register 3
            AEEFR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event A Counter Enable
                EEVACE: u1 = 0x0,
                ///  External Event A Counter Reset
                EEVACRES: u1 = 0x0,
                ///  External Event A Reset Mode
                EEVARSTM: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  External Event A Selection
                EEVASEL: u4 = 0x0,
                ///  External Event A counter
                EEVACNT: u6 = 0x0,
                padding: u18 = 0x0,
            }),
        };

        ///  High Resolution Timer: TIMB
        pub const HRTIM_TIMB = extern struct {
            ///  Timerx Control Register
            TIMBCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM Timer x Clock prescaler
                CK_PSCx: u3 = 0x0,
                ///  Continuous mode
                CONT: u1 = 0x0,
                ///  Re-triggerable mode
                RETRIG: u1 = 0x0,
                ///  Half mode enable
                HALF: u1 = 0x0,
                ///  Push-Pull mode enable
                PSHPLL: u1 = 0x0,
                ///  Interleaved mode
                INTLVD: u2 = 0x0,
                ///  Re-Synchronized Update
                RSYNCU: u1 = 0x0,
                ///  Synchronization Resets Timer x
                SYNCRSTx: u1 = 0x0,
                ///  Synchronization Starts Timer x
                SYNCSTRTx: u1 = 0x0,
                ///  Delayed CMP2 mode
                DELCMP2: u2 = 0x0,
                ///  Delayed CMP4 mode
                DELCMP4: u2 = 0x0,
                ///  TFU
                TFU: u1 = 0x0,
                ///  Timer x Repetition update
                TxREPU: u1 = 0x0,
                ///  Timerx reset update
                TxRSTU: u1 = 0x0,
                ///  TAU
                TAU: u1 = 0x0,
                reserved21: u1 = 0x0,
                ///  TCU
                TCU: u1 = 0x0,
                ///  TDU
                TDU: u1 = 0x0,
                ///  TEU
                TEU: u1 = 0x0,
                ///  Master Timer update
                MSTU: u1 = 0x0,
                ///  AC Synchronization
                DACSYNC: u2 = 0x0,
                ///  Preload enable
                PREEN: u1 = 0x0,
                ///  Update Gating
                UPDGAT: u4 = 0x0,
            }),
            ///  Timerx Interrupt Status Register
            TIMBISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt Flag
                CMP1: u1 = 0x0,
                ///  Compare 2 Interrupt Flag
                CMP2: u1 = 0x0,
                ///  Compare 3 Interrupt Flag
                CMP3: u1 = 0x0,
                ///  Compare 4 Interrupt Flag
                CMP4: u1 = 0x0,
                ///  Repetition Interrupt Flag
                REP: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt Flag
                UPD: u1 = 0x0,
                ///  Capture1 Interrupt Flag
                CPT1: u1 = 0x0,
                ///  Capture2 Interrupt Flag
                CPT2: u1 = 0x0,
                ///  Output 1 Set Interrupt Flag
                SETx1: u1 = 0x0,
                ///  Output 1 Reset Interrupt Flag
                RSTx1: u1 = 0x0,
                ///  Output 2 Set Interrupt Flag
                SETx2: u1 = 0x0,
                ///  Output 2 Reset Interrupt Flag
                RSTx2: u1 = 0x0,
                ///  Reset Interrupt Flag
                RST: u1 = 0x0,
                ///  Delayed Protection Flag
                DLYPRT: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  Current Push Pull Status
                CPPSTAT: u1 = 0x0,
                ///  Idle Push Pull Status
                IPPSTAT: u1 = 0x0,
                ///  Output 1 State
                O1STAT: u1 = 0x0,
                ///  Output 2 State
                O2STAT: u1 = 0x0,
                ///  Output 1 Copy
                O1CPY: u1 = 0x0,
                ///  Output 2 Copy
                O2CPY: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  Timerx Interrupt Clear Register
            TIMBICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt flag Clear
                CMP1C: u1 = 0x0,
                ///  Compare 2 Interrupt flag Clear
                CMP2C: u1 = 0x0,
                ///  Compare 3 Interrupt flag Clear
                CMP3C: u1 = 0x0,
                ///  Compare 4 Interrupt flag Clear
                CMP4C: u1 = 0x0,
                ///  Repetition Interrupt flag Clear
                REPC: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt flag Clear
                UPDC: u1 = 0x0,
                ///  Capture1 Interrupt flag Clear
                CPT1C: u1 = 0x0,
                ///  Capture2 Interrupt flag Clear
                CPT2C: u1 = 0x0,
                ///  Output 1 Set flag Clear
                SET1xC: u1 = 0x0,
                ///  Output 1 Reset flag Clear
                RSTx1C: u1 = 0x0,
                ///  Output 2 Set flag Clear
                SET2xC: u1 = 0x0,
                ///  Output 2 Reset flag Clear
                RSTx2C: u1 = 0x0,
                ///  Reset Interrupt flag Clear
                RSTC: u1 = 0x0,
                ///  Delayed Protection Flag Clear
                DLYPRTC: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  TIMxDIER
            TIMBDIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CMP1IE
                CMP1IE: u1 = 0x0,
                ///  CMP2IE
                CMP2IE: u1 = 0x0,
                ///  CMP3IE
                CMP3IE: u1 = 0x0,
                ///  CMP4IE
                CMP4IE: u1 = 0x0,
                ///  REPIE
                REPIE: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  UPDIE
                UPDIE: u1 = 0x0,
                ///  CPT1IE
                CPT1IE: u1 = 0x0,
                ///  CPT2IE
                CPT2IE: u1 = 0x0,
                ///  SET1xIE
                SET1xIE: u1 = 0x0,
                ///  RSTx1IE
                RSTx1IE: u1 = 0x0,
                ///  SETx2IE
                SETx2IE: u1 = 0x0,
                ///  RSTx2IE
                RSTx2IE: u1 = 0x0,
                ///  RSTIE
                RSTIE: u1 = 0x0,
                ///  DLYPRTIE
                DLYPRTIE: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  CMP1DE
                CMP1DE: u1 = 0x0,
                ///  CMP2DE
                CMP2DE: u1 = 0x0,
                ///  CMP3DE
                CMP3DE: u1 = 0x0,
                ///  CMP4DE
                CMP4DE: u1 = 0x0,
                ///  REPDE
                REPDE: u1 = 0x0,
                reserved22: u1 = 0x0,
                ///  UPDDE
                UPDDE: u1 = 0x0,
                ///  CPT1DE
                CPT1DE: u1 = 0x0,
                ///  CPT2DE
                CPT2DE: u1 = 0x0,
                ///  SET1xDE
                SET1xDE: u1 = 0x0,
                ///  RSTx1DE
                RSTx1DE: u1 = 0x0,
                ///  SETx2DE
                SETx2DE: u1 = 0x0,
                ///  RSTx2DE
                RSTx2DE: u1 = 0x0,
                ///  RSTDE
                RSTDE: u1 = 0x0,
                ///  DLYPRTDE
                DLYPRTDE: u1 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  Timerx Counter Register
            CNTR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Counter value
                CNTx: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Period Register
            PERBR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Timerx Period value
                PERx: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  Timerx Repetition Register
            REPBR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Repetition counter value
                REPx: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Timerx Compare 1 Register
            CMP1BR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 1 Compound Register
            CMP1CBR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                ///  Timerx Repetition value (aliased from HRTIM_REPx register)
                REPx: u8 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Compare 2 Register
            CMP2BR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 2 value
                CMP2x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 3 Register
            CMP3BR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 3 value
                CMP3x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 4 Register
            CMP4BR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 4 value
                CMP4x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Capture 1 Register
            CPT1BR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 1 value
                CPT1x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Capture 2 Register
            CPT2BR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 2 value
                CPT2x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Deadtime Register
            DTBR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Deadtime Rising value
                DTRx: u9 = 0x0,
                ///  Sign Deadtime Rising value
                SDTRx: u1 = 0x0,
                ///  Deadtime Prescaler
                DTPRSC: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Deadtime Rising Sign Lock
                DTRSLKx: u1 = 0x0,
                ///  Deadtime Rising Lock
                DTRLKx: u1 = 0x0,
                ///  Deadtime Falling value
                DTFx: u9 = 0x0,
                ///  Sign Deadtime Falling value
                SDTFx: u1 = 0x0,
                reserved30: u4 = 0x0,
                ///  Deadtime Falling Sign Lock
                DTFSLKx: u1 = 0x0,
                ///  Deadtime Falling Lock
                DTFLKx: u1 = 0x0,
            }),
            ///  Timerx Output1 Set Register
            SETB1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Set trigger
                SST: u1 = 0x0,
                ///  Timer A resynchronizaton
                RESYNC: u1 = 0x0,
                ///  Timer A Period
                PER: u1 = 0x0,
                ///  Timer A compare 1
                CMP1: u1 = 0x0,
                ///  Timer A compare 2
                CMP2: u1 = 0x0,
                ///  Timer A compare 3
                CMP3: u1 = 0x0,
                ///  Timer A compare 4
                CMP4: u1 = 0x0,
                ///  Master Period
                MSTPER: u1 = 0x0,
                ///  Master Compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master Compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master Compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master Compare 4
                MSTCMP4: u1 = 0x0,
                ///  Timer Event 1
                TIMEVNT1: u1 = 0x0,
                ///  Timer Event 2
                TIMEVNT2: u1 = 0x0,
                ///  Timer Event 3
                TIMEVNT3: u1 = 0x0,
                ///  Timer Event 4
                TIMEVNT4: u1 = 0x0,
                ///  Timer Event 5
                TIMEVNT5: u1 = 0x0,
                ///  Timer Event 6
                TIMEVNT6: u1 = 0x0,
                ///  Timer Event 7
                TIMEVNT7: u1 = 0x0,
                ///  Timer Event 8
                TIMEVNT8: u1 = 0x0,
                ///  Timer Event 9
                TIMEVNT9: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Registers update (transfer preload to active)
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output1 Reset Register
            RSTB1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Set Register
            SETB2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SST
                SST: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Reset Register
            RSTB2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 1
            EEFBR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 1 latch
                EE1LTCH: u1 = 0x0,
                ///  External Event 1 filter
                EE1FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 2 latch
                EE2LTCH: u1 = 0x0,
                ///  External Event 2 filter
                EE2FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 3 latch
                EE3LTCH: u1 = 0x0,
                ///  External Event 3 filter
                EE3FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 4 latch
                EE4LTCH: u1 = 0x0,
                ///  External Event 4 filter
                EE4FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 5 latch
                EE5LTCH: u1 = 0x0,
                ///  External Event 5 filter
                EE5FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 2
            EEFBR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 6 latch
                EE6LTCH: u1 = 0x0,
                ///  External Event 6 filter
                EE6FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 7 latch
                EE7LTCH: u1 = 0x0,
                ///  External Event 7 filter
                EE7FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 8 latch
                EE8LTCH: u1 = 0x0,
                ///  External Event 8 filter
                EE8FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 9 latch
                EE9LTCH: u1 = 0x0,
                ///  External Event 9 filter
                EE9FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 10 latch
                EE10LTCH: u1 = 0x0,
                ///  External Event 10 filter
                EE10FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  TimerA Reset Register
            RSTBR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timer A Update reset
                TIMFCMP1: u1 = 0x0,
                ///  Timer A Update reset
                UPDT: u1 = 0x0,
                ///  Timer A compare 2 reset
                CMP2: u1 = 0x0,
                ///  Timer A compare 4 reset
                CMP4: u1 = 0x0,
                ///  Master timer Period
                MSTPER: u1 = 0x0,
                ///  Master compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master compare 4
                MSTCMP4: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Timer A Compare 1
                TIMACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TIMACMP2: u1 = 0x0,
                ///  Timer A Compare 4
                TIMACMP4: u1 = 0x0,
                ///  Timer C Compare 1
                TIMCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TIMCCMP2: u1 = 0x0,
                ///  Timer C Compare 4
                TIMCCMP4: u1 = 0x0,
                ///  Timer D Compare 1
                TIMDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TIMDCMP2: u1 = 0x0,
                ///  Timer D Compare 4
                TIMDCMP4: u1 = 0x0,
                ///  Timer E Compare 1
                TIMECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TIMECMP2: u1 = 0x0,
                ///  Timer E Compare 4
                TIMECMP4: u1 = 0x0,
                ///  Timer F Compare 2
                TIMFCPM2: u1 = 0x0,
            }),
            ///  Timerx Chopper Register
            CHPBR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx carrier frequency value
                CHPFRQ: u4 = 0x0,
                ///  Timerx chopper duty cycle value
                CHPDTY: u3 = 0x0,
                ///  STRTPW
                STRTPW: u4 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  Timerx Capture 2 Control Register
            CPT1BCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TFCMP1
                TFCMP1: u1 = 0x0,
                ///  TFCMP2
                TFCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  Timer E output 1 Set
                TE1SET: u1 = 0x0,
                ///  Timer E output 1 Reset
                TE1RST: u1 = 0x0,
                ///  Timer E Compare 1
                TECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TECMP2: u1 = 0x0,
            }),
            ///  CPT2xCR
            CPT2BCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TFCMP1
                TFCMP1: u1 = 0x0,
                ///  TFCMP2
                TFCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  Timer E output 1 Set
                TE1SET: u1 = 0x0,
                ///  Timer E output 1 Reset
                TE1RST: u1 = 0x0,
                ///  Timer E Compare 1
                TECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TECMP2: u1 = 0x0,
            }),
            ///  Timerx Output Register
            OUTBR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Output 1 polarity
                POL1: u1 = 0x0,
                ///  Output 1 Idle mode
                IDLEM1: u1 = 0x0,
                ///  Output 1 Idle State
                IDLES1: u1 = 0x0,
                ///  Output 1 Fault state
                FAULT1: u2 = 0x0,
                ///  Output 1 Chopper enable
                CHP1: u1 = 0x0,
                ///  Output 1 Deadtime upon burst mode Idle entry
                DIDL1: u1 = 0x0,
                ///  Deadtime enable
                DTEN: u1 = 0x0,
                ///  Delayed Protection Enable
                DLYPRTEN: u1 = 0x0,
                ///  Delayed Protection
                DLYPRT: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Balanced Idle Automatic Resume
                BIAR: u1 = 0x0,
                reserved17: u2 = 0x0,
                ///  Output 2 polarity
                POL2: u1 = 0x0,
                ///  Output 2 Idle mode
                IDLEM2: u1 = 0x0,
                ///  Output 2 Idle State
                IDLES2: u1 = 0x0,
                ///  Output 2 Fault state
                FAULT2: u2 = 0x0,
                ///  Output 2 Chopper enable
                CHP2: u1 = 0x0,
                ///  Output 2 Deadtime upon burst mode Idle entry
                DIDL2: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Fault Register
            FLTBR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Fault 1 enable
                FLT1EN: u1 = 0x0,
                ///  Fault 2 enable
                FLT2EN: u1 = 0x0,
                ///  Fault 3 enable
                FLT3EN: u1 = 0x0,
                ///  Fault 4 enable
                FLT4EN: u1 = 0x0,
                ///  Fault 5 enable
                FLT5EN: u1 = 0x0,
                ///  Fault 6 enable
                FLT6EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  Fault sources Lock
                FLTLCK: u1 = 0x0,
            }),
            ///  HRTIM Timerx Control Register 2
            TIMBCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dual Channel DAC trigger enable
                DCDE: u1 = 0x0,
                ///  Dual Channel DAC Step trigger
                DCDS: u1 = 0x0,
                ///  Dual Channel DAC Reset trigger
                DCDR: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  Up-Down Mode
                UDM: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Roll-Over Mode
                ROM: u2 = 0x0,
                ///  Output Roll-Over Mode
                OUTROM: u2 = 0x0,
                ///  ADC Roll-Over Mode
                ADROM: u2 = 0x0,
                ///  Burst Mode Roll-Over Mode
                BMROM: u2 = 0x0,
                ///  Fault and Event Roll-Over Mode
                FEROM: u2 = 0x0,
                ///  Greater than Compare 1 PWM mode
                GTCMP1: u1 = 0x0,
                ///  Greater than Compare 3 PWM mode
                GTCMP3: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Triggered-half mode
                TRGHLF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  HRTIM Timerx External Event Filtering Register 3
            BEEFR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event A Counter Enable
                EEVACE: u1 = 0x0,
                ///  External Event A Counter Reset
                EEVACRES: u1 = 0x0,
                ///  External Event A Reset Mode
                EEVARSTM: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  External Event A Selection
                EEVASEL: u4 = 0x0,
                ///  External Event A counter
                EEVACNT: u6 = 0x0,
                padding: u18 = 0x0,
            }),
        };

        ///  High Resolution Timer: TIMC
        pub const HRTIM_TIMC = extern struct {
            ///  Timerx Control Register
            TIMCCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM Timer x Clock prescaler
                CK_PSCx: u3 = 0x0,
                ///  Continuous mode
                CONT: u1 = 0x0,
                ///  Re-triggerable mode
                RETRIG: u1 = 0x0,
                ///  Half mode enable
                HALF: u1 = 0x0,
                ///  Push-Pull mode enable
                PSHPLL: u1 = 0x0,
                ///  Interleaved mode
                INTLVD: u2 = 0x0,
                ///  Re-Synchronized Update
                RSYNCU: u1 = 0x0,
                ///  Synchronization Resets Timer x
                SYNCRSTx: u1 = 0x0,
                ///  Synchronization Starts Timer x
                SYNCSTRTx: u1 = 0x0,
                ///  Delayed CMP2 mode
                DELCMP2: u2 = 0x0,
                ///  Delayed CMP4 mode
                DELCMP4: u2 = 0x0,
                ///  TFU
                TFU: u1 = 0x0,
                ///  Timer x Repetition update
                TxREPU: u1 = 0x0,
                ///  Timerx reset update
                TxRSTU: u1 = 0x0,
                ///  TAU
                TAU: u1 = 0x0,
                ///  TBU
                TBU: u1 = 0x0,
                reserved22: u1 = 0x0,
                ///  TDU
                TDU: u1 = 0x0,
                ///  TEU
                TEU: u1 = 0x0,
                ///  Master Timer update
                MSTU: u1 = 0x0,
                ///  AC Synchronization
                DACSYNC: u2 = 0x0,
                ///  Preload enable
                PREEN: u1 = 0x0,
                ///  Update Gating
                UPDGAT: u4 = 0x0,
            }),
            ///  Timerx Interrupt Status Register
            TIMCISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt Flag
                CMP1: u1 = 0x0,
                ///  Compare 2 Interrupt Flag
                CMP2: u1 = 0x0,
                ///  Compare 3 Interrupt Flag
                CMP3: u1 = 0x0,
                ///  Compare 4 Interrupt Flag
                CMP4: u1 = 0x0,
                ///  Repetition Interrupt Flag
                REP: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt Flag
                UPD: u1 = 0x0,
                ///  Capture1 Interrupt Flag
                CPT1: u1 = 0x0,
                ///  Capture2 Interrupt Flag
                CPT2: u1 = 0x0,
                ///  Output 1 Set Interrupt Flag
                SETx1: u1 = 0x0,
                ///  Output 1 Reset Interrupt Flag
                RSTx1: u1 = 0x0,
                ///  Output 2 Set Interrupt Flag
                SETx2: u1 = 0x0,
                ///  Output 2 Reset Interrupt Flag
                RSTx2: u1 = 0x0,
                ///  Reset Interrupt Flag
                RST: u1 = 0x0,
                ///  Delayed Protection Flag
                DLYPRT: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  Current Push Pull Status
                CPPSTAT: u1 = 0x0,
                ///  Idle Push Pull Status
                IPPSTAT: u1 = 0x0,
                ///  Output 1 State
                O1STAT: u1 = 0x0,
                ///  Output 2 State
                O2STAT: u1 = 0x0,
                ///  Output 1 Copy
                O1CPY: u1 = 0x0,
                ///  Output 2 Copy
                O2CPY: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  Timerx Interrupt Clear Register
            TIMCICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt flag Clear
                CMP1C: u1 = 0x0,
                ///  Compare 2 Interrupt flag Clear
                CMP2C: u1 = 0x0,
                ///  Compare 3 Interrupt flag Clear
                CMP3C: u1 = 0x0,
                ///  Compare 4 Interrupt flag Clear
                CMP4C: u1 = 0x0,
                ///  Repetition Interrupt flag Clear
                REPC: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt flag Clear
                UPDC: u1 = 0x0,
                ///  Capture1 Interrupt flag Clear
                CPT1C: u1 = 0x0,
                ///  Capture2 Interrupt flag Clear
                CPT2C: u1 = 0x0,
                ///  Output 1 Set flag Clear
                SET1xC: u1 = 0x0,
                ///  Output 1 Reset flag Clear
                RSTx1C: u1 = 0x0,
                ///  Output 2 Set flag Clear
                SET2xC: u1 = 0x0,
                ///  Output 2 Reset flag Clear
                RSTx2C: u1 = 0x0,
                ///  Reset Interrupt flag Clear
                RSTC: u1 = 0x0,
                ///  Delayed Protection Flag Clear
                DLYPRTC: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  TIMxDIER
            TIMCDIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CMP1IE
                CMP1IE: u1 = 0x0,
                ///  CMP2IE
                CMP2IE: u1 = 0x0,
                ///  CMP3IE
                CMP3IE: u1 = 0x0,
                ///  CMP4IE
                CMP4IE: u1 = 0x0,
                ///  REPIE
                REPIE: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  UPDIE
                UPDIE: u1 = 0x0,
                ///  CPT1IE
                CPT1IE: u1 = 0x0,
                ///  CPT2IE
                CPT2IE: u1 = 0x0,
                ///  SET1xIE
                SET1xIE: u1 = 0x0,
                ///  RSTx1IE
                RSTx1IE: u1 = 0x0,
                ///  SETx2IE
                SETx2IE: u1 = 0x0,
                ///  RSTx2IE
                RSTx2IE: u1 = 0x0,
                ///  RSTIE
                RSTIE: u1 = 0x0,
                ///  DLYPRTIE
                DLYPRTIE: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  CMP1DE
                CMP1DE: u1 = 0x0,
                ///  CMP2DE
                CMP2DE: u1 = 0x0,
                ///  CMP3DE
                CMP3DE: u1 = 0x0,
                ///  CMP4DE
                CMP4DE: u1 = 0x0,
                ///  REPDE
                REPDE: u1 = 0x0,
                reserved22: u1 = 0x0,
                ///  UPDDE
                UPDDE: u1 = 0x0,
                ///  CPT1DE
                CPT1DE: u1 = 0x0,
                ///  CPT2DE
                CPT2DE: u1 = 0x0,
                ///  SET1xDE
                SET1xDE: u1 = 0x0,
                ///  RSTx1DE
                RSTx1DE: u1 = 0x0,
                ///  SETx2DE
                SETx2DE: u1 = 0x0,
                ///  RSTx2DE
                RSTx2DE: u1 = 0x0,
                ///  RSTDE
                RSTDE: u1 = 0x0,
                ///  DLYPRTDE
                DLYPRTDE: u1 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  Timerx Counter Register
            CNTCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Counter value
                CNTx: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Period Register
            PERCR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Timerx Period value
                PERx: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  Timerx Repetition Register
            REPCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Repetition counter value
                REPx: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Timerx Compare 1 Register
            CMP1CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 1 Compound Register
            CMP1CCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                ///  Timerx Repetition value (aliased from HRTIM_REPx register)
                REPx: u8 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Compare 2 Register
            CMP2CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 2 value
                CMP2x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 3 Register
            CMP3CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 3 value
                CMP3x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 4 Register
            CMP4CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 4 value
                CMP4x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Capture 1 Register
            CPT1CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 1 value
                CPT1x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Capture 2 Register
            CPT2CR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 2 value
                CPT2x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Deadtime Register
            DTCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Deadtime Rising value
                DTRx: u9 = 0x0,
                ///  Sign Deadtime Rising value
                SDTRx: u1 = 0x0,
                ///  Deadtime Prescaler
                DTPRSC: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Deadtime Rising Sign Lock
                DTRSLKx: u1 = 0x0,
                ///  Deadtime Rising Lock
                DTRLKx: u1 = 0x0,
                ///  Deadtime Falling value
                DTFx: u9 = 0x0,
                ///  Sign Deadtime Falling value
                SDTFx: u1 = 0x0,
                reserved30: u4 = 0x0,
                ///  Deadtime Falling Sign Lock
                DTFSLKx: u1 = 0x0,
                ///  Deadtime Falling Lock
                DTFLKx: u1 = 0x0,
            }),
            ///  Timerx Output1 Set Register
            SETC1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Set trigger
                SST: u1 = 0x0,
                ///  Timer A resynchronizaton
                RESYNC: u1 = 0x0,
                ///  Timer A Period
                PER: u1 = 0x0,
                ///  Timer A compare 1
                CMP1: u1 = 0x0,
                ///  Timer A compare 2
                CMP2: u1 = 0x0,
                ///  Timer A compare 3
                CMP3: u1 = 0x0,
                ///  Timer A compare 4
                CMP4: u1 = 0x0,
                ///  Master Period
                MSTPER: u1 = 0x0,
                ///  Master Compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master Compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master Compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master Compare 4
                MSTCMP4: u1 = 0x0,
                ///  Timer Event 1
                TIMEVNT1: u1 = 0x0,
                ///  Timer Event 2
                TIMEVNT2: u1 = 0x0,
                ///  Timer Event 3
                TIMEVNT3: u1 = 0x0,
                ///  Timer Event 4
                TIMEVNT4: u1 = 0x0,
                ///  Timer Event 5
                TIMEVNT5: u1 = 0x0,
                ///  Timer Event 6
                TIMEVNT6: u1 = 0x0,
                ///  Timer Event 7
                TIMEVNT7: u1 = 0x0,
                ///  Timer Event 8
                TIMEVNT8: u1 = 0x0,
                ///  Timer Event 9
                TIMEVNT9: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Registers update (transfer preload to active)
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output1 Reset Register
            RSTC1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Set Register
            SETC2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SST
                SST: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Reset Register
            RSTC2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 1
            EEFCR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 1 latch
                EE1LTCH: u1 = 0x0,
                ///  External Event 1 filter
                EE1FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 2 latch
                EE2LTCH: u1 = 0x0,
                ///  External Event 2 filter
                EE2FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 3 latch
                EE3LTCH: u1 = 0x0,
                ///  External Event 3 filter
                EE3FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 4 latch
                EE4LTCH: u1 = 0x0,
                ///  External Event 4 filter
                EE4FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 5 latch
                EE5LTCH: u1 = 0x0,
                ///  External Event 5 filter
                EE5FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 2
            EEFCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 6 latch
                EE6LTCH: u1 = 0x0,
                ///  External Event 6 filter
                EE6FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 7 latch
                EE7LTCH: u1 = 0x0,
                ///  External Event 7 filter
                EE7FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 8 latch
                EE8LTCH: u1 = 0x0,
                ///  External Event 8 filter
                EE8FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 9 latch
                EE9LTCH: u1 = 0x0,
                ///  External Event 9 filter
                EE9FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 10 latch
                EE10LTCH: u1 = 0x0,
                ///  External Event 10 filter
                EE10FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  TimerA Reset Register
            RSTCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timer A Update reset
                TIMFCMP1: u1 = 0x0,
                ///  Timer A Update reset
                UPDT: u1 = 0x0,
                ///  Timer A compare 2 reset
                CMP2: u1 = 0x0,
                ///  Timer A compare 4 reset
                CMP4: u1 = 0x0,
                ///  Master timer Period
                MSTPER: u1 = 0x0,
                ///  Master compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master compare 4
                MSTCMP4: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Timer A Compare 1
                TIMACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TIMACMP2: u1 = 0x0,
                ///  Timer A Compare 4
                TIMACMP4: u1 = 0x0,
                ///  Timer B Compare 1
                TIMBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TIMBCMP2: u1 = 0x0,
                ///  Timer B Compare 4
                TIMBCMP4: u1 = 0x0,
                ///  Timer D Compare 1
                TIMDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TIMDCMP2: u1 = 0x0,
                ///  Timer D Compare 4
                TIMDCMP4: u1 = 0x0,
                ///  Timer E Compare 1
                TIMECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TIMECMP2: u1 = 0x0,
                ///  Timer E Compare 4
                TIMECMP4: u1 = 0x0,
                ///  Timer F Compare 2
                TIMFCPM2: u1 = 0x0,
            }),
            ///  Timerx Chopper Register
            CHPCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx carrier frequency value
                CHPFRQ: u4 = 0x0,
                ///  Timerx chopper duty cycle value
                CHPDTY: u3 = 0x0,
                ///  STRTPW
                STRTPW: u4 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  Timerx Capture 2 Control Register
            CPT1CCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TFCMP1
                TFCMP1: u1 = 0x0,
                ///  TFCMP2
                TFCMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  Timer E output 1 Set
                TE1SET: u1 = 0x0,
                ///  Timer E output 1 Reset
                TE1RST: u1 = 0x0,
                ///  Timer E Compare 1
                TECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TECMP2: u1 = 0x0,
            }),
            ///  CPT2xCR
            CPT2CCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TF1CMP1
                TF1CMP1: u1 = 0x0,
                ///  TF1CMP2
                TF1CMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  Timer E output 1 Set
                TE1SET: u1 = 0x0,
                ///  Timer E output 1 Reset
                TE1RST: u1 = 0x0,
                ///  Timer E Compare 1
                TECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TECMP2: u1 = 0x0,
            }),
            ///  Timerx Output Register
            OUTCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Output 1 polarity
                POL1: u1 = 0x0,
                ///  Output 1 Idle mode
                IDLEM1: u1 = 0x0,
                ///  Output 1 Idle State
                IDLES1: u1 = 0x0,
                ///  Output 1 Fault state
                FAULT1: u2 = 0x0,
                ///  Output 1 Chopper enable
                CHP1: u1 = 0x0,
                ///  Output 1 Deadtime upon burst mode Idle entry
                DIDL1: u1 = 0x0,
                ///  Deadtime enable
                DTEN: u1 = 0x0,
                ///  Delayed Protection Enable
                DLYPRTEN: u1 = 0x0,
                ///  Delayed Protection
                DLYPRT: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Balanced Idle Automatic Resume
                BIAR: u1 = 0x0,
                reserved17: u2 = 0x0,
                ///  Output 2 polarity
                POL2: u1 = 0x0,
                ///  Output 2 Idle mode
                IDLEM2: u1 = 0x0,
                ///  Output 2 Idle State
                IDLES2: u1 = 0x0,
                ///  Output 2 Fault state
                FAULT2: u2 = 0x0,
                ///  Output 2 Chopper enable
                CHP2: u1 = 0x0,
                ///  Output 2 Deadtime upon burst mode Idle entry
                DIDL2: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Fault Register
            FLTCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Fault 1 enable
                FLT1EN: u1 = 0x0,
                ///  Fault 2 enable
                FLT2EN: u1 = 0x0,
                ///  Fault 3 enable
                FLT3EN: u1 = 0x0,
                ///  Fault 4 enable
                FLT4EN: u1 = 0x0,
                ///  Fault 5 enable
                FLT5EN: u1 = 0x0,
                ///  Fault 6 enable
                FLT6EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  Fault sources Lock
                FLTLCK: u1 = 0x0,
            }),
            ///  HRTIM Timerx Control Register 2
            TIMCCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dual Channel DAC trigger enable
                DCDE: u1 = 0x0,
                ///  Dual Channel DAC Step trigger
                DCDS: u1 = 0x0,
                ///  Dual Channel DAC Reset trigger
                DCDR: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  Up-Down Mode
                UDM: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Roll-Over Mode
                ROM: u2 = 0x0,
                ///  Output Roll-Over Mode
                OUTROM: u2 = 0x0,
                ///  ADC Roll-Over Mode
                ADROM: u2 = 0x0,
                ///  Burst Mode Roll-Over Mode
                BMROM: u2 = 0x0,
                ///  Fault and Event Roll-Over Mode
                FEROM: u2 = 0x0,
                ///  Greater than Compare 1 PWM mode
                GTCMP1: u1 = 0x0,
                ///  Greater than Compare 3 PWM mode
                GTCMP3: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Triggered-half mode
                TRGHLF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  HRTIM Timerx External Event Filtering Register 3
            CEEFR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event A Counter Enable
                EEVACE: u1 = 0x0,
                ///  External Event A Counter Reset
                EEVACRES: u1 = 0x0,
                ///  External Event A Reset Mode
                EEVARSTM: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  External Event A Selection
                EEVASEL: u4 = 0x0,
                ///  External Event A counter
                EEVACNT: u6 = 0x0,
                padding: u18 = 0x0,
            }),
        };

        ///  High Resolution Timer: TIMD
        pub const HRTIM_TIMD = extern struct {
            ///  Timerx Control Register
            TIMDCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM Timer x Clock prescaler
                CK_PSCx: u3 = 0x0,
                ///  Continuous mode
                CONT: u1 = 0x0,
                ///  Re-triggerable mode
                RETRIG: u1 = 0x0,
                ///  Half mode enable
                HALF: u1 = 0x0,
                ///  Push-Pull mode enable
                PSHPLL: u1 = 0x0,
                ///  Interleaved mode
                INTLVD: u2 = 0x0,
                ///  Re-Synchronized Update
                RSYNCU: u1 = 0x0,
                ///  Synchronization Resets Timer x
                SYNCRSTx: u1 = 0x0,
                ///  Synchronization Starts Timer x
                SYNCSTRTx: u1 = 0x0,
                ///  Delayed CMP2 mode
                DELCMP2: u2 = 0x0,
                ///  Delayed CMP4 mode
                DELCMP4: u2 = 0x0,
                ///  TFU
                TFU: u1 = 0x0,
                ///  Timer x Repetition update
                TxREPU: u1 = 0x0,
                ///  Timerx reset update
                TxRSTU: u1 = 0x0,
                ///  TAU
                TAU: u1 = 0x0,
                ///  TBU
                TBU: u1 = 0x0,
                ///  TCU
                TCU: u1 = 0x0,
                reserved23: u1 = 0x0,
                ///  TEU
                TEU: u1 = 0x0,
                ///  Master Timer update
                MSTU: u1 = 0x0,
                ///  AC Synchronization
                DACSYNC: u2 = 0x0,
                ///  Preload enable
                PREEN: u1 = 0x0,
                ///  Update Gating
                UPDGAT: u4 = 0x0,
            }),
            ///  Timerx Interrupt Status Register
            TIMDISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt Flag
                CMP1: u1 = 0x0,
                ///  Compare 2 Interrupt Flag
                CMP2: u1 = 0x0,
                ///  Compare 3 Interrupt Flag
                CMP3: u1 = 0x0,
                ///  Compare 4 Interrupt Flag
                CMP4: u1 = 0x0,
                ///  Repetition Interrupt Flag
                REP: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt Flag
                UPD: u1 = 0x0,
                ///  Capture1 Interrupt Flag
                CPT1: u1 = 0x0,
                ///  Capture2 Interrupt Flag
                CPT2: u1 = 0x0,
                ///  Output 1 Set Interrupt Flag
                SETx1: u1 = 0x0,
                ///  Output 1 Reset Interrupt Flag
                RSTx1: u1 = 0x0,
                ///  Output 2 Set Interrupt Flag
                SETx2: u1 = 0x0,
                ///  Output 2 Reset Interrupt Flag
                RSTx2: u1 = 0x0,
                ///  Reset Interrupt Flag
                RST: u1 = 0x0,
                ///  Delayed Protection Flag
                DLYPRT: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  Current Push Pull Status
                CPPSTAT: u1 = 0x0,
                ///  Idle Push Pull Status
                IPPSTAT: u1 = 0x0,
                ///  Output 1 State
                O1STAT: u1 = 0x0,
                ///  Output 2 State
                O2STAT: u1 = 0x0,
                ///  Output 1 Copy
                O1CPY: u1 = 0x0,
                ///  Output 2 Copy
                O2CPY: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  Timerx Interrupt Clear Register
            TIMDICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt flag Clear
                CMP1C: u1 = 0x0,
                ///  Compare 2 Interrupt flag Clear
                CMP2C: u1 = 0x0,
                ///  Compare 3 Interrupt flag Clear
                CMP3C: u1 = 0x0,
                ///  Compare 4 Interrupt flag Clear
                CMP4C: u1 = 0x0,
                ///  Repetition Interrupt flag Clear
                REPC: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt flag Clear
                UPDC: u1 = 0x0,
                ///  Capture1 Interrupt flag Clear
                CPT1C: u1 = 0x0,
                ///  Capture2 Interrupt flag Clear
                CPT2C: u1 = 0x0,
                ///  Output 1 Set flag Clear
                SET1xC: u1 = 0x0,
                ///  Output 1 Reset flag Clear
                RSTx1C: u1 = 0x0,
                ///  Output 2 Set flag Clear
                SET2xC: u1 = 0x0,
                ///  Output 2 Reset flag Clear
                RSTx2C: u1 = 0x0,
                ///  Reset Interrupt flag Clear
                RSTC: u1 = 0x0,
                ///  Delayed Protection Flag Clear
                DLYPRTC: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  TIMxDIER
            TIMDDIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CMP1IE
                CMP1IE: u1 = 0x0,
                ///  CMP2IE
                CMP2IE: u1 = 0x0,
                ///  CMP3IE
                CMP3IE: u1 = 0x0,
                ///  CMP4IE
                CMP4IE: u1 = 0x0,
                ///  REPIE
                REPIE: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  UPDIE
                UPDIE: u1 = 0x0,
                ///  CPT1IE
                CPT1IE: u1 = 0x0,
                ///  CPT2IE
                CPT2IE: u1 = 0x0,
                ///  SET1xIE
                SET1xIE: u1 = 0x0,
                ///  RSTx1IE
                RSTx1IE: u1 = 0x0,
                ///  SETx2IE
                SETx2IE: u1 = 0x0,
                ///  RSTx2IE
                RSTx2IE: u1 = 0x0,
                ///  RSTIE
                RSTIE: u1 = 0x0,
                ///  DLYPRTIE
                DLYPRTIE: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  CMP1DE
                CMP1DE: u1 = 0x0,
                ///  CMP2DE
                CMP2DE: u1 = 0x0,
                ///  CMP3DE
                CMP3DE: u1 = 0x0,
                ///  CMP4DE
                CMP4DE: u1 = 0x0,
                ///  REPDE
                REPDE: u1 = 0x0,
                reserved22: u1 = 0x0,
                ///  UPDDE
                UPDDE: u1 = 0x0,
                ///  CPT1DE
                CPT1DE: u1 = 0x0,
                ///  CPT2DE
                CPT2DE: u1 = 0x0,
                ///  SET1xDE
                SET1xDE: u1 = 0x0,
                ///  RSTx1DE
                RSTx1DE: u1 = 0x0,
                ///  SETx2DE
                SETx2DE: u1 = 0x0,
                ///  RSTx2DE
                RSTx2DE: u1 = 0x0,
                ///  RSTDE
                RSTDE: u1 = 0x0,
                ///  DLYPRTDE
                DLYPRTDE: u1 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  Timerx Counter Register
            CNTDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Counter value
                CNTx: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Period Register
            PERDR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Timerx Period value
                PERx: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  Timerx Repetition Register
            REPDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Repetition counter value
                REPx: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Timerx Compare 1 Register
            CMP1DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 1 Compound Register
            CMP1CDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                ///  Timerx Repetition value (aliased from HRTIM_REPx register)
                REPx: u8 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Compare 2 Register
            CMP2DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 2 value
                CMP2x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 3 Register
            CMP3DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 3 value
                CMP3x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 4 Register
            CMP4DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 4 value
                CMP4x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Capture 1 Register
            CPT1DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 1 value
                CPT1x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Capture 2 Register
            CPT2DR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 2 value
                CPT2x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Deadtime Register
            DTDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Deadtime Rising value
                DTRx: u9 = 0x0,
                ///  Sign Deadtime Rising value
                SDTRx: u1 = 0x0,
                ///  Deadtime Prescaler
                DTPRSC: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Deadtime Rising Sign Lock
                DTRSLKx: u1 = 0x0,
                ///  Deadtime Rising Lock
                DTRLKx: u1 = 0x0,
                ///  Deadtime Falling value
                DTFx: u9 = 0x0,
                ///  Sign Deadtime Falling value
                SDTFx: u1 = 0x0,
                reserved30: u4 = 0x0,
                ///  Deadtime Falling Sign Lock
                DTFSLKx: u1 = 0x0,
                ///  Deadtime Falling Lock
                DTFLKx: u1 = 0x0,
            }),
            ///  Timerx Output1 Set Register
            SETD1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Set trigger
                SST: u1 = 0x0,
                ///  Timer A resynchronizaton
                RESYNC: u1 = 0x0,
                ///  Timer A Period
                PER: u1 = 0x0,
                ///  Timer A compare 1
                CMP1: u1 = 0x0,
                ///  Timer A compare 2
                CMP2: u1 = 0x0,
                ///  Timer A compare 3
                CMP3: u1 = 0x0,
                ///  Timer A compare 4
                CMP4: u1 = 0x0,
                ///  Master Period
                MSTPER: u1 = 0x0,
                ///  Master Compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master Compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master Compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master Compare 4
                MSTCMP4: u1 = 0x0,
                ///  Timer Event 1
                TIMEVNT1: u1 = 0x0,
                ///  Timer Event 2
                TIMEVNT2: u1 = 0x0,
                ///  Timer Event 3
                TIMEVNT3: u1 = 0x0,
                ///  Timer Event 4
                TIMEVNT4: u1 = 0x0,
                ///  Timer Event 5
                TIMEVNT5: u1 = 0x0,
                ///  Timer Event 6
                TIMEVNT6: u1 = 0x0,
                ///  Timer Event 7
                TIMEVNT7: u1 = 0x0,
                ///  Timer Event 8
                TIMEVNT8: u1 = 0x0,
                ///  Timer Event 9
                TIMEVNT9: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Registers update (transfer preload to active)
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output1 Reset Register
            RSTD1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Set Register
            SETD2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SST
                SST: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Reset Register
            RSTD2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 1
            EEFDR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 1 latch
                EE1LTCH: u1 = 0x0,
                ///  External Event 1 filter
                EE1FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 2 latch
                EE2LTCH: u1 = 0x0,
                ///  External Event 2 filter
                EE2FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 3 latch
                EE3LTCH: u1 = 0x0,
                ///  External Event 3 filter
                EE3FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 4 latch
                EE4LTCH: u1 = 0x0,
                ///  External Event 4 filter
                EE4FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 5 latch
                EE5LTCH: u1 = 0x0,
                ///  External Event 5 filter
                EE5FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 2
            EEFDR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 6 latch
                EE6LTCH: u1 = 0x0,
                ///  External Event 6 filter
                EE6FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 7 latch
                EE7LTCH: u1 = 0x0,
                ///  External Event 7 filter
                EE7FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 8 latch
                EE8LTCH: u1 = 0x0,
                ///  External Event 8 filter
                EE8FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 9 latch
                EE9LTCH: u1 = 0x0,
                ///  External Event 9 filter
                EE9FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 10 latch
                EE10LTCH: u1 = 0x0,
                ///  External Event 10 filter
                EE10FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  TimerA Reset Register
            RSTDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timer A Update reset
                TIMFCMP1: u1 = 0x0,
                ///  Timer A Update reset
                UPDT: u1 = 0x0,
                ///  Timer A compare 2 reset
                CMP2: u1 = 0x0,
                ///  Timer A compare 4 reset
                CMP4: u1 = 0x0,
                ///  Master timer Period
                MSTPER: u1 = 0x0,
                ///  Master compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master compare 4
                MSTCMP4: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Timer A Compare 1
                TIMACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TIMACMP2: u1 = 0x0,
                ///  Timer A Compare 4
                TIMACMP4: u1 = 0x0,
                ///  Timer B Compare 1
                TIMBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TIMBCMP2: u1 = 0x0,
                ///  Timer B Compare 4
                TIMBCMP4: u1 = 0x0,
                ///  Timer C Compare 1
                TIMCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TIMCCMP2: u1 = 0x0,
                ///  Timer C Compare 4
                TIMCCMP4: u1 = 0x0,
                ///  Timer E Compare 1
                TIMECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TIMECMP2: u1 = 0x0,
                ///  Timer E Compare 4
                TIMECMP4: u1 = 0x0,
                ///  Timer F Compare 2
                TIMFCPM2: u1 = 0x0,
            }),
            ///  Timerx Chopper Register
            CHPDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx carrier frequency value
                CHPFRQ: u4 = 0x0,
                ///  Timerx chopper duty cycle value
                CHPDTY: u3 = 0x0,
                ///  STRTPW
                STRTPW: u4 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  Timerx Capture 2 Control Register
            CPT1DCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TFCMP1
                TFCMP1: u1 = 0x0,
                ///  TFCMP2
                TFCMP2: u1 = 0x0,
                ///  Timer E output 1 Set
                TE1SET: u1 = 0x0,
                ///  Timer E output 1 Reset
                TE1RST: u1 = 0x0,
                ///  Timer E Compare 1
                TECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TECMP2: u1 = 0x0,
            }),
            ///  CPT2xCR
            CPT2DCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TFCMP1
                TFCMP1: u1 = 0x0,
                ///  TFCMP2
                TFCMP2: u1 = 0x0,
                ///  Timer E output 1 Set
                TE1SET: u1 = 0x0,
                ///  Timer E output 1 Reset
                TE1RST: u1 = 0x0,
                ///  Timer E Compare 1
                TECMP1: u1 = 0x0,
                ///  Timer E Compare 2
                TECMP2: u1 = 0x0,
            }),
            ///  Timerx Output Register
            OUTDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Output 1 polarity
                POL1: u1 = 0x0,
                ///  Output 1 Idle mode
                IDLEM1: u1 = 0x0,
                ///  Output 1 Idle State
                IDLES1: u1 = 0x0,
                ///  Output 1 Fault state
                FAULT1: u2 = 0x0,
                ///  Output 1 Chopper enable
                CHP1: u1 = 0x0,
                ///  Output 1 Deadtime upon burst mode Idle entry
                DIDL1: u1 = 0x0,
                ///  Deadtime enable
                DTEN: u1 = 0x0,
                ///  Delayed Protection Enable
                DLYPRTEN: u1 = 0x0,
                ///  Delayed Protection
                DLYPRT: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Balanced Idle Automatic Resume
                BIAR: u1 = 0x0,
                reserved17: u2 = 0x0,
                ///  Output 2 polarity
                POL2: u1 = 0x0,
                ///  Output 2 Idle mode
                IDLEM2: u1 = 0x0,
                ///  Output 2 Idle State
                IDLES2: u1 = 0x0,
                ///  Output 2 Fault state
                FAULT2: u2 = 0x0,
                ///  Output 2 Chopper enable
                CHP2: u1 = 0x0,
                ///  Output 2 Deadtime upon burst mode Idle entry
                DIDL2: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Fault Register
            FLTDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Fault 1 enable
                FLT1EN: u1 = 0x0,
                ///  Fault 2 enable
                FLT2EN: u1 = 0x0,
                ///  Fault 3 enable
                FLT3EN: u1 = 0x0,
                ///  Fault 4 enable
                FLT4EN: u1 = 0x0,
                ///  Fault 5 enable
                FLT5EN: u1 = 0x0,
                ///  Fault 6 enable
                FLT6EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  Fault sources Lock
                FLTLCK: u1 = 0x0,
            }),
            ///  HRTIM Timerx Control Register 2
            TIMDCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dual Channel DAC trigger enable
                DCDE: u1 = 0x0,
                ///  Dual Channel DAC Step trigger
                DCDS: u1 = 0x0,
                ///  Dual Channel DAC Reset trigger
                DCDR: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  Up-Down Mode
                UDM: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Roll-Over Mode
                ROM: u2 = 0x0,
                ///  Output Roll-Over Mode
                OUTROM: u2 = 0x0,
                ///  ADC Roll-Over Mode
                ADROM: u2 = 0x0,
                ///  Burst Mode Roll-Over Mode
                BMROM: u2 = 0x0,
                ///  Fault and Event Roll-Over Mode
                FEROM: u2 = 0x0,
                ///  Greater than Compare 1 PWM mode
                GTCMP1: u1 = 0x0,
                ///  Greater than Compare 3 PWM mode
                GTCMP3: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Triggered-half mode
                TRGHLF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  HRTIM Timerx External Event Filtering Register 3
            DEEFR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event A Counter Enable
                EEVACE: u1 = 0x0,
                ///  External Event A Counter Reset
                EEVACRES: u1 = 0x0,
                ///  External Event A Reset Mode
                EEVARSTM: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  External Event A Selection
                EEVASEL: u4 = 0x0,
                ///  External Event A counter
                EEVACNT: u6 = 0x0,
                padding: u18 = 0x0,
            }),
        };

        ///  High Resolution Timer: TIME
        pub const HRTIM_TIME = extern struct {
            ///  Timerx Control Register
            TIMECR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM Timer x Clock prescaler
                CK_PSCx: u3 = 0x0,
                ///  Continuous mode
                CONT: u1 = 0x0,
                ///  Re-triggerable mode
                RETRIG: u1 = 0x0,
                ///  Half mode enable
                HALF: u1 = 0x0,
                ///  Push-Pull mode enable
                PSHPLL: u1 = 0x0,
                ///  Interleaved mode
                INTLVD: u2 = 0x0,
                ///  Re-Synchronized Update
                RSYNCU: u1 = 0x0,
                ///  Synchronization Resets Timer x
                SYNCRSTx: u1 = 0x0,
                ///  Synchronization Starts Timer x
                SYNCSTRTx: u1 = 0x0,
                ///  Delayed CMP2 mode
                DELCMP2: u2 = 0x0,
                ///  Delayed CMP4 mode
                DELCMP4: u2 = 0x0,
                ///  TFU
                TFU: u1 = 0x0,
                ///  Timer x Repetition update
                TxREPU: u1 = 0x0,
                ///  Timerx reset update
                TxRSTU: u1 = 0x0,
                ///  TAU
                TAU: u1 = 0x0,
                ///  TBU
                TBU: u1 = 0x0,
                ///  TCU
                TCU: u1 = 0x0,
                ///  TDU
                TDU: u1 = 0x0,
                reserved24: u1 = 0x0,
                ///  Master Timer update
                MSTU: u1 = 0x0,
                ///  AC Synchronization
                DACSYNC: u2 = 0x0,
                ///  Preload enable
                PREEN: u1 = 0x0,
                ///  Update Gating
                UPDGAT: u4 = 0x0,
            }),
            ///  Timerx Interrupt Status Register
            TIMEISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt Flag
                CMP1: u1 = 0x0,
                ///  Compare 2 Interrupt Flag
                CMP2: u1 = 0x0,
                ///  Compare 3 Interrupt Flag
                CMP3: u1 = 0x0,
                ///  Compare 4 Interrupt Flag
                CMP4: u1 = 0x0,
                ///  Repetition Interrupt Flag
                REP: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt Flag
                UPD: u1 = 0x0,
                ///  Capture1 Interrupt Flag
                CPT1: u1 = 0x0,
                ///  Capture2 Interrupt Flag
                CPT2: u1 = 0x0,
                ///  Output 1 Set Interrupt Flag
                SETx1: u1 = 0x0,
                ///  Output 1 Reset Interrupt Flag
                RSTx1: u1 = 0x0,
                ///  Output 2 Set Interrupt Flag
                SETx2: u1 = 0x0,
                ///  Output 2 Reset Interrupt Flag
                RSTx2: u1 = 0x0,
                ///  Reset Interrupt Flag
                RST: u1 = 0x0,
                ///  Delayed Protection Flag
                DLYPRT: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  Current Push Pull Status
                CPPSTAT: u1 = 0x0,
                ///  Idle Push Pull Status
                IPPSTAT: u1 = 0x0,
                ///  Output 1 State
                O1STAT: u1 = 0x0,
                ///  Output 2 State
                O2STAT: u1 = 0x0,
                ///  Output 1 Copy
                O1CPY: u1 = 0x0,
                ///  Output 2 Copy
                O2CPY: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  Timerx Interrupt Clear Register
            TIMEICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt flag Clear
                CMP1C: u1 = 0x0,
                ///  Compare 2 Interrupt flag Clear
                CMP2C: u1 = 0x0,
                ///  Compare 3 Interrupt flag Clear
                CMP3C: u1 = 0x0,
                ///  Compare 4 Interrupt flag Clear
                CMP4C: u1 = 0x0,
                ///  Repetition Interrupt flag Clear
                REPC: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt flag Clear
                UPDC: u1 = 0x0,
                ///  Capture1 Interrupt flag Clear
                CPT1C: u1 = 0x0,
                ///  Capture2 Interrupt flag Clear
                CPT2C: u1 = 0x0,
                ///  Output 1 Set flag Clear
                SET1xC: u1 = 0x0,
                ///  Output 1 Reset flag Clear
                RSTx1C: u1 = 0x0,
                ///  Output 2 Set flag Clear
                SET2xC: u1 = 0x0,
                ///  Output 2 Reset flag Clear
                RSTx2C: u1 = 0x0,
                ///  Reset Interrupt flag Clear
                RSTC: u1 = 0x0,
                ///  Delayed Protection Flag Clear
                DLYPRTC: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  TIMxDIER
            TIMEDIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CMP1IE
                CMP1IE: u1 = 0x0,
                ///  CMP2IE
                CMP2IE: u1 = 0x0,
                ///  CMP3IE
                CMP3IE: u1 = 0x0,
                ///  CMP4IE
                CMP4IE: u1 = 0x0,
                ///  REPIE
                REPIE: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  UPDIE
                UPDIE: u1 = 0x0,
                ///  CPT1IE
                CPT1IE: u1 = 0x0,
                ///  CPT2IE
                CPT2IE: u1 = 0x0,
                ///  SET1xIE
                SET1xIE: u1 = 0x0,
                ///  RSTx1IE
                RSTx1IE: u1 = 0x0,
                ///  SETx2IE
                SETx2IE: u1 = 0x0,
                ///  RSTx2IE
                RSTx2IE: u1 = 0x0,
                ///  RSTIE
                RSTIE: u1 = 0x0,
                ///  DLYPRTIE
                DLYPRTIE: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  CMP1DE
                CMP1DE: u1 = 0x0,
                ///  CMP2DE
                CMP2DE: u1 = 0x0,
                ///  CMP3DE
                CMP3DE: u1 = 0x0,
                ///  CMP4DE
                CMP4DE: u1 = 0x0,
                ///  REPDE
                REPDE: u1 = 0x0,
                reserved22: u1 = 0x0,
                ///  UPDDE
                UPDDE: u1 = 0x0,
                ///  CPT1DE
                CPT1DE: u1 = 0x0,
                ///  CPT2DE
                CPT2DE: u1 = 0x0,
                ///  SET1xDE
                SET1xDE: u1 = 0x0,
                ///  RSTx1DE
                RSTx1DE: u1 = 0x0,
                ///  SETx2DE
                SETx2DE: u1 = 0x0,
                ///  RSTx2DE
                RSTx2DE: u1 = 0x0,
                ///  RSTDE
                RSTDE: u1 = 0x0,
                ///  DLYPRTDE
                DLYPRTDE: u1 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  Timerx Counter Register
            CNTER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Counter value
                CNTx: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Period Register
            PERER: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Timerx Period value
                PERx: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  Timerx Repetition Register
            REPER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Repetition counter value
                REPx: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Timerx Compare 1 Register
            CMP1ER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 1 Compound Register
            CMP1CER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                ///  Timerx Repetition value (aliased from HRTIM_REPx register)
                REPx: u8 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Compare 2 Register
            CMP2ER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 2 value
                CMP2x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 3 Register
            CMP3ER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 3 value
                CMP3x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 4 Register
            CMP4ER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 4 value
                CMP4x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Capture 1 Register
            CPT1ER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 1 value
                CPT1x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Capture 2 Register
            CPT2ER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 2 value
                CPT2x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Deadtime Register
            DTER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Deadtime Rising value
                DTRx: u9 = 0x0,
                ///  Sign Deadtime Rising value
                SDTRx: u1 = 0x0,
                ///  Deadtime Prescaler
                DTPRSC: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Deadtime Rising Sign Lock
                DTRSLKx: u1 = 0x0,
                ///  Deadtime Rising Lock
                DTRLKx: u1 = 0x0,
                ///  Deadtime Falling value
                DTFx: u9 = 0x0,
                ///  Sign Deadtime Falling value
                SDTFx: u1 = 0x0,
                reserved30: u4 = 0x0,
                ///  Deadtime Falling Sign Lock
                DTFSLKx: u1 = 0x0,
                ///  Deadtime Falling Lock
                DTFLKx: u1 = 0x0,
            }),
            ///  Timerx Output1 Set Register
            SETE1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Set trigger
                SST: u1 = 0x0,
                ///  Timer A resynchronizaton
                RESYNC: u1 = 0x0,
                ///  Timer A Period
                PER: u1 = 0x0,
                ///  Timer A compare 1
                CMP1: u1 = 0x0,
                ///  Timer A compare 2
                CMP2: u1 = 0x0,
                ///  Timer A compare 3
                CMP3: u1 = 0x0,
                ///  Timer A compare 4
                CMP4: u1 = 0x0,
                ///  Master Period
                MSTPER: u1 = 0x0,
                ///  Master Compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master Compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master Compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master Compare 4
                MSTCMP4: u1 = 0x0,
                ///  Timer Event 1
                TIMEVNT1: u1 = 0x0,
                ///  Timer Event 2
                TIMEVNT2: u1 = 0x0,
                ///  Timer Event 3
                TIMEVNT3: u1 = 0x0,
                ///  Timer Event 4
                TIMEVNT4: u1 = 0x0,
                ///  Timer Event 5
                TIMEVNT5: u1 = 0x0,
                ///  Timer Event 6
                TIMEVNT6: u1 = 0x0,
                ///  Timer Event 7
                TIMEVNT7: u1 = 0x0,
                ///  Timer Event 8
                TIMEVNT8: u1 = 0x0,
                ///  Timer Event 9
                TIMEVNT9: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Registers update (transfer preload to active)
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output1 Reset Register
            RSTE1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Set Register
            SETE2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SST
                SST: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Reset Register
            RSTE2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 1
            EEFER1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 1 latch
                EE1LTCH: u1 = 0x0,
                ///  External Event 1 filter
                EE1FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 2 latch
                EE2LTCH: u1 = 0x0,
                ///  External Event 2 filter
                EE2FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 3 latch
                EE3LTCH: u1 = 0x0,
                ///  External Event 3 filter
                EE3FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 4 latch
                EE4LTCH: u1 = 0x0,
                ///  External Event 4 filter
                EE4FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 5 latch
                EE5LTCH: u1 = 0x0,
                ///  External Event 5 filter
                EE5FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 2
            EEFER2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 6 latch
                EE6LTCH: u1 = 0x0,
                ///  External Event 6 filter
                EE6FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 7 latch
                EE7LTCH: u1 = 0x0,
                ///  External Event 7 filter
                EE7FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 8 latch
                EE8LTCH: u1 = 0x0,
                ///  External Event 8 filter
                EE8FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 9 latch
                EE9LTCH: u1 = 0x0,
                ///  External Event 9 filter
                EE9FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 10 latch
                EE10LTCH: u1 = 0x0,
                ///  External Event 10 filter
                EE10FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  TimerA Reset Register
            RSTER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timer A Update reset
                TIMFCMP1: u1 = 0x0,
                ///  Timer A Update reset
                UPDT: u1 = 0x0,
                ///  Timer A compare 2 reset
                CMP2: u1 = 0x0,
                ///  Timer A compare 4 reset
                CMP4: u1 = 0x0,
                ///  Master timer Period
                MSTPER: u1 = 0x0,
                ///  Master compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master compare 4
                MSTCMP4: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Timer A Compare 1
                TIMACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TIMACMP2: u1 = 0x0,
                ///  Timer A Compare 4
                TIMACMP4: u1 = 0x0,
                ///  Timer B Compare 1
                TIMBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TIMBCMP2: u1 = 0x0,
                ///  Timer B Compare 4
                TIMBCMP4: u1 = 0x0,
                ///  Timer C Compare 1
                TIMCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TIMCCMP2: u1 = 0x0,
                ///  Timer C Compare 4
                TIMCCMP4: u1 = 0x0,
                ///  Timer D Compare 1
                TIMDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TIMDCMP2: u1 = 0x0,
                ///  Timer D Compare 4
                TIMDCMP4: u1 = 0x0,
                ///  Timer F Compare 2
                TIMFCPM2: u1 = 0x0,
            }),
            ///  Timerx Chopper Register
            CHPER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx carrier frequency value
                CHPFRQ: u4 = 0x0,
                ///  Timerx chopper duty cycle value
                CHPDTY: u3 = 0x0,
                ///  STRTPW
                STRTPW: u4 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  Timerx Capture 2 Control Register
            CPT1ECR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TFCMP1
                TFCMP1: u1 = 0x0,
                ///  TFCMP2
                TFCMP2: u1 = 0x0,
            }),
            ///  CPT2xCR
            CPT2ECR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  TF1SET
                TF1SET: u1 = 0x0,
                ///  TF1RST
                TF1RST: u1 = 0x0,
                ///  TFCMP1
                TFCMP1: u1 = 0x0,
                ///  TFCMP2
                TFCMP2: u1 = 0x0,
            }),
            ///  Timerx Output Register
            OUTER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Output 1 polarity
                POL1: u1 = 0x0,
                ///  Output 1 Idle mode
                IDLEM1: u1 = 0x0,
                ///  Output 1 Idle State
                IDLES1: u1 = 0x0,
                ///  Output 1 Fault state
                FAULT1: u2 = 0x0,
                ///  Output 1 Chopper enable
                CHP1: u1 = 0x0,
                ///  Output 1 Deadtime upon burst mode Idle entry
                DIDL1: u1 = 0x0,
                ///  Deadtime enable
                DTEN: u1 = 0x0,
                ///  Delayed Protection Enable
                DLYPRTEN: u1 = 0x0,
                ///  Delayed Protection
                DLYPRT: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Balanced Idle Automatic Resume
                BIAR: u1 = 0x0,
                reserved17: u2 = 0x0,
                ///  Output 2 polarity
                POL2: u1 = 0x0,
                ///  Output 2 Idle mode
                IDLEM2: u1 = 0x0,
                ///  Output 2 Idle State
                IDLES2: u1 = 0x0,
                ///  Output 2 Fault state
                FAULT2: u2 = 0x0,
                ///  Output 2 Chopper enable
                CHP2: u1 = 0x0,
                ///  Output 2 Deadtime upon burst mode Idle entry
                DIDL2: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Fault Register
            FLTER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Fault 1 enable
                FLT1EN: u1 = 0x0,
                ///  Fault 2 enable
                FLT2EN: u1 = 0x0,
                ///  Fault 3 enable
                FLT3EN: u1 = 0x0,
                ///  Fault 4 enable
                FLT4EN: u1 = 0x0,
                ///  Fault 5 enable
                FLT5EN: u1 = 0x0,
                ///  Fault 6 enable
                FLT6EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  Fault sources Lock
                FLTLCK: u1 = 0x0,
            }),
            ///  HRTIM Timerx Control Register 2
            TIMECR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dual Channel DAC trigger enable
                DCDE: u1 = 0x0,
                ///  Dual Channel DAC Step trigger
                DCDS: u1 = 0x0,
                ///  Dual Channel DAC Reset trigger
                DCDR: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  Up-Down Mode
                UDM: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Roll-Over Mode
                ROM: u2 = 0x0,
                ///  Output Roll-Over Mode
                OUTROM: u2 = 0x0,
                ///  ADC Roll-Over Mode
                ADROM: u2 = 0x0,
                ///  Burst Mode Roll-Over Mode
                BMROM: u2 = 0x0,
                ///  Fault and Event Roll-Over Mode
                FEROM: u2 = 0x0,
                ///  Greater than Compare 1 PWM mode
                GTCMP1: u1 = 0x0,
                ///  Greater than Compare 3 PWM mode
                GTCMP3: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Triggered-half mode
                TRGHLF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  HRTIM Timerx External Event Filtering Register 3
            EEEFR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event A Counter Enable
                EEVACE: u1 = 0x0,
                ///  External Event A Counter Reset
                EEVACRES: u1 = 0x0,
                ///  External Event A Reset Mode
                EEVARSTM: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  External Event A Selection
                EEVASEL: u4 = 0x0,
                ///  External Event A counter
                EEVACNT: u6 = 0x0,
                padding: u18 = 0x0,
            }),
        };

        ///  High Resolution Timer: TIMF
        pub const HRTIM_TIMF = extern struct {
            ///  Timerx Control Register
            TIMFCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM Timer x Clock prescaler
                CK_PSCx: u3 = 0x0,
                ///  Continuous mode
                CONT: u1 = 0x0,
                ///  Re-triggerable mode
                RETRIG: u1 = 0x0,
                ///  Half mode enable
                HALF: u1 = 0x0,
                ///  Push-Pull mode enable
                PSHPLL: u1 = 0x0,
                ///  Interleaved mode
                INTLVD: u2 = 0x0,
                ///  Re-Synchronized Update
                RSYNCU: u1 = 0x0,
                ///  Synchronization Resets Timer x
                SYNCRSTx: u1 = 0x0,
                ///  Synchronization Starts Timer x
                SYNCSTRTx: u1 = 0x0,
                ///  Delayed CMP2 mode
                DELCMP2: u2 = 0x0,
                ///  Delayed CMP4 mode
                DELCMP4: u2 = 0x0,
                reserved17: u1 = 0x0,
                ///  Timer x Repetition update
                TxREPU: u1 = 0x0,
                ///  Timerx reset update
                TxRSTU: u1 = 0x0,
                ///  TAU
                TAU: u1 = 0x0,
                ///  TBU
                TBU: u1 = 0x0,
                ///  TCU
                TCU: u1 = 0x0,
                ///  TDU
                TDU: u1 = 0x0,
                reserved24: u1 = 0x0,
                ///  Master Timer update
                MSTU: u1 = 0x0,
                ///  AC Synchronization
                DACSYNC: u2 = 0x0,
                ///  Preload enable
                PREEN: u1 = 0x0,
                ///  Update Gating
                UPDGAT: u4 = 0x0,
            }),
            ///  Timerx Interrupt Status Register
            TIMFISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt Flag
                CMP1: u1 = 0x0,
                ///  Compare 2 Interrupt Flag
                CMP2: u1 = 0x0,
                ///  Compare 3 Interrupt Flag
                CMP3: u1 = 0x0,
                ///  Compare 4 Interrupt Flag
                CMP4: u1 = 0x0,
                ///  Repetition Interrupt Flag
                REP: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt Flag
                UPD: u1 = 0x0,
                ///  Capture1 Interrupt Flag
                CPT1: u1 = 0x0,
                ///  Capture2 Interrupt Flag
                CPT2: u1 = 0x0,
                ///  Output 1 Set Interrupt Flag
                SETx1: u1 = 0x0,
                ///  Output 1 Reset Interrupt Flag
                RSTx1: u1 = 0x0,
                ///  Output 2 Set Interrupt Flag
                SETx2: u1 = 0x0,
                ///  Output 2 Reset Interrupt Flag
                RSTx2: u1 = 0x0,
                ///  Reset Interrupt Flag
                RST: u1 = 0x0,
                ///  Delayed Protection Flag
                DLYPRT: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  Current Push Pull Status
                CPPSTAT: u1 = 0x0,
                ///  Idle Push Pull Status
                IPPSTAT: u1 = 0x0,
                ///  Output 1 State
                O1STAT: u1 = 0x0,
                ///  Output 2 State
                O2STAT: u1 = 0x0,
                ///  Output 1 Copy
                O1CPY: u1 = 0x0,
                ///  Output 2 Copy
                O2CPY: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  Timerx Interrupt Clear Register
            TIMFICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Compare 1 Interrupt flag Clear
                CMP1C: u1 = 0x0,
                ///  Compare 2 Interrupt flag Clear
                CMP2C: u1 = 0x0,
                ///  Compare 3 Interrupt flag Clear
                CMP3C: u1 = 0x0,
                ///  Compare 4 Interrupt flag Clear
                CMP4C: u1 = 0x0,
                ///  Repetition Interrupt flag Clear
                REPC: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Update Interrupt flag Clear
                UPDC: u1 = 0x0,
                ///  Capture1 Interrupt flag Clear
                CPT1C: u1 = 0x0,
                ///  Capture2 Interrupt flag Clear
                CPT2C: u1 = 0x0,
                ///  Output 1 Set flag Clear
                SET1xC: u1 = 0x0,
                ///  Output 1 Reset flag Clear
                RSTx1C: u1 = 0x0,
                ///  Output 2 Set flag Clear
                SET2xC: u1 = 0x0,
                ///  Output 2 Reset flag Clear
                RSTx2C: u1 = 0x0,
                ///  Reset Interrupt flag Clear
                RSTC: u1 = 0x0,
                ///  Delayed Protection Flag Clear
                DLYPRTC: u1 = 0x0,
                padding: u17 = 0x0,
            }),
            ///  TIMxDIER
            TIMFDIER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  CMP1IE
                CMP1IE: u1 = 0x0,
                ///  CMP2IE
                CMP2IE: u1 = 0x0,
                ///  CMP3IE
                CMP3IE: u1 = 0x0,
                ///  CMP4IE
                CMP4IE: u1 = 0x0,
                ///  REPIE
                REPIE: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  UPDIE
                UPDIE: u1 = 0x0,
                ///  CPT1IE
                CPT1IE: u1 = 0x0,
                ///  CPT2IE
                CPT2IE: u1 = 0x0,
                ///  SET1xIE
                SET1xIE: u1 = 0x0,
                ///  RSTx1IE
                RSTx1IE: u1 = 0x0,
                ///  SETx2IE
                SETx2IE: u1 = 0x0,
                ///  RSTx2IE
                RSTx2IE: u1 = 0x0,
                ///  RSTIE
                RSTIE: u1 = 0x0,
                ///  DLYPRTIE
                DLYPRTIE: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  CMP1DE
                CMP1DE: u1 = 0x0,
                ///  CMP2DE
                CMP2DE: u1 = 0x0,
                ///  CMP3DE
                CMP3DE: u1 = 0x0,
                ///  CMP4DE
                CMP4DE: u1 = 0x0,
                ///  REPDE
                REPDE: u1 = 0x0,
                reserved22: u1 = 0x0,
                ///  UPDDE
                UPDDE: u1 = 0x0,
                ///  CPT1DE
                CPT1DE: u1 = 0x0,
                ///  CPT2DE
                CPT2DE: u1 = 0x0,
                ///  SET1xDE
                SET1xDE: u1 = 0x0,
                ///  RSTx1DE
                RSTx1DE: u1 = 0x0,
                ///  SETx2DE
                SETx2DE: u1 = 0x0,
                ///  RSTx2DE
                RSTx2DE: u1 = 0x0,
                ///  RSTDE
                RSTDE: u1 = 0x0,
                ///  DLYPRTDE
                DLYPRTDE: u1 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  Timerx Counter Register
            CNTFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Counter value
                CNTx: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Period Register
            PERFR: mmio.Mmio(packed struct(u32) { // reset_value: 0xFFFF
                ///  Timerx Period value
                PERx: u16 = 0xFFFF,
                padding: u16 = 0x0,
            }),
            ///  Timerx Repetition Register
            REPFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Repetition counter value
                REPx: u8 = 0x0,
                padding: u24 = 0x0,
            }),
            ///  Timerx Compare 1 Register
            CMP1FR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 1 Compound Register
            CMP1CFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 1 value
                CMP1x: u16 = 0x0,
                ///  Timerx Repetition value (aliased from HRTIM_REPx register)
                REPx: u8 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Compare 2 Register
            CMP2FR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 2 value
                CMP2x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 3 Register
            CMP3FR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 3 value
                CMP3x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Compare 4 Register
            CMP4FR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Compare 4 value
                CMP4x: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timerx Capture 1 Register
            CPT1FR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 1 value
                CPT1x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Capture 2 Register
            CPT2FR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx Capture 2 value
                CPT2x: u16 = 0x0,
                ///  Timerx Capture 1 Direction status
                DIR: u1 = 0x0,
                padding: u15 = 0x0,
            }),
            ///  Timerx Deadtime Register
            DTFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Deadtime Rising value
                DTRx: u9 = 0x0,
                ///  Sign Deadtime Rising value
                SDTRx: u1 = 0x0,
                ///  Deadtime Prescaler
                DTPRSC: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Deadtime Rising Sign Lock
                DTRSLKx: u1 = 0x0,
                ///  Deadtime Rising Lock
                DTRLKx: u1 = 0x0,
                ///  Deadtime Falling value
                DTFx: u9 = 0x0,
                ///  Sign Deadtime Falling value
                SDTFx: u1 = 0x0,
                reserved30: u4 = 0x0,
                ///  Deadtime Falling Sign Lock
                DTFSLKx: u1 = 0x0,
                ///  Deadtime Falling Lock
                DTFLKx: u1 = 0x0,
            }),
            ///  Timerx Output1 Set Register
            SETF1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Set trigger
                SST: u1 = 0x0,
                ///  Timer A resynchronizaton
                RESYNC: u1 = 0x0,
                ///  Timer A Period
                PER: u1 = 0x0,
                ///  Timer A compare 1
                CMP1: u1 = 0x0,
                ///  Timer A compare 2
                CMP2: u1 = 0x0,
                ///  Timer A compare 3
                CMP3: u1 = 0x0,
                ///  Timer A compare 4
                CMP4: u1 = 0x0,
                ///  Master Period
                MSTPER: u1 = 0x0,
                ///  Master Compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master Compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master Compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master Compare 4
                MSTCMP4: u1 = 0x0,
                ///  Timer Event 1
                TIMEVNT1: u1 = 0x0,
                ///  Timer Event 2
                TIMEVNT2: u1 = 0x0,
                ///  Timer Event 3
                TIMEVNT3: u1 = 0x0,
                ///  Timer Event 4
                TIMEVNT4: u1 = 0x0,
                ///  Timer Event 5
                TIMEVNT5: u1 = 0x0,
                ///  Timer Event 6
                TIMEVNT6: u1 = 0x0,
                ///  Timer Event 7
                TIMEVNT7: u1 = 0x0,
                ///  Timer Event 8
                TIMEVNT8: u1 = 0x0,
                ///  Timer Event 9
                TIMEVNT9: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Registers update (transfer preload to active)
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output1 Reset Register
            RSTE1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Set Register
            SETF2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SST
                SST: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx Output2 Reset Register
            RSTF2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SRT
                SRT: u1 = 0x0,
                ///  RESYNC
                RESYNC: u1 = 0x0,
                ///  PER
                PER: u1 = 0x0,
                ///  CMP1
                CMP1: u1 = 0x0,
                ///  CMP2
                CMP2: u1 = 0x0,
                ///  CMP3
                CMP3: u1 = 0x0,
                ///  CMP4
                CMP4: u1 = 0x0,
                ///  MSTPER
                MSTPER: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TIMEVNT1
                TIMEVNT1: u1 = 0x0,
                ///  TIMEVNT2
                TIMEVNT2: u1 = 0x0,
                ///  TIMEVNT3
                TIMEVNT3: u1 = 0x0,
                ///  TIMEVNT4
                TIMEVNT4: u1 = 0x0,
                ///  TIMEVNT5
                TIMEVNT5: u1 = 0x0,
                ///  TIMEVNT6
                TIMEVNT6: u1 = 0x0,
                ///  TIMEVNT7
                TIMEVNT7: u1 = 0x0,
                ///  TIMEVNT8
                TIMEVNT8: u1 = 0x0,
                ///  TIMEVNT9
                TIMEVNT9: u1 = 0x0,
                ///  EXTEVNT1
                EXTEVNT1: u1 = 0x0,
                ///  EXTEVNT2
                EXTEVNT2: u1 = 0x0,
                ///  EXTEVNT3
                EXTEVNT3: u1 = 0x0,
                ///  EXTEVNT4
                EXTEVNT4: u1 = 0x0,
                ///  EXTEVNT5
                EXTEVNT5: u1 = 0x0,
                ///  EXTEVNT6
                EXTEVNT6: u1 = 0x0,
                ///  EXTEVNT7
                EXTEVNT7: u1 = 0x0,
                ///  EXTEVNT8
                EXTEVNT8: u1 = 0x0,
                ///  EXTEVNT9
                EXTEVNT9: u1 = 0x0,
                ///  EXTEVNT10
                EXTEVNT10: u1 = 0x0,
                ///  UPDATE
                UPDATE: u1 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 1
            EEFFR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 1 latch
                EE1LTCH: u1 = 0x0,
                ///  External Event 1 filter
                EE1FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 2 latch
                EE2LTCH: u1 = 0x0,
                ///  External Event 2 filter
                EE2FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 3 latch
                EE3LTCH: u1 = 0x0,
                ///  External Event 3 filter
                EE3FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 4 latch
                EE4LTCH: u1 = 0x0,
                ///  External Event 4 filter
                EE4FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 5 latch
                EE5LTCH: u1 = 0x0,
                ///  External Event 5 filter
                EE5FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  Timerx External Event Filtering Register 2
            EEFFR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 6 latch
                EE6LTCH: u1 = 0x0,
                ///  External Event 6 filter
                EE6FLTR: u4 = 0x0,
                reserved6: u1 = 0x0,
                ///  External Event 7 latch
                EE7LTCH: u1 = 0x0,
                ///  External Event 7 filter
                EE7FLTR: u4 = 0x0,
                reserved12: u1 = 0x0,
                ///  External Event 8 latch
                EE8LTCH: u1 = 0x0,
                ///  External Event 8 filter
                EE8FLTR: u4 = 0x0,
                reserved18: u1 = 0x0,
                ///  External Event 9 latch
                EE9LTCH: u1 = 0x0,
                ///  External Event 9 filter
                EE9FLTR: u4 = 0x0,
                reserved24: u1 = 0x0,
                ///  External Event 10 latch
                EE10LTCH: u1 = 0x0,
                ///  External Event 10 filter
                EE10FLTR: u4 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  TimerA Reset Register
            RSTFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timer A Update reset
                TIMFCMP1: u1 = 0x0,
                ///  Timer A Update reset
                UPDT: u1 = 0x0,
                ///  Timer A compare 2 reset
                CMP2: u1 = 0x0,
                ///  Timer A compare 4 reset
                CMP4: u1 = 0x0,
                ///  Master timer Period
                MSTPER: u1 = 0x0,
                ///  Master compare 1
                MSTCMP1: u1 = 0x0,
                ///  Master compare 2
                MSTCMP2: u1 = 0x0,
                ///  Master compare 3
                MSTCMP3: u1 = 0x0,
                ///  Master compare 4
                MSTCMP4: u1 = 0x0,
                ///  External Event 1
                EXTEVNT1: u1 = 0x0,
                ///  External Event 2
                EXTEVNT2: u1 = 0x0,
                ///  External Event 3
                EXTEVNT3: u1 = 0x0,
                ///  External Event 4
                EXTEVNT4: u1 = 0x0,
                ///  External Event 5
                EXTEVNT5: u1 = 0x0,
                ///  External Event 6
                EXTEVNT6: u1 = 0x0,
                ///  External Event 7
                EXTEVNT7: u1 = 0x0,
                ///  External Event 8
                EXTEVNT8: u1 = 0x0,
                ///  External Event 9
                EXTEVNT9: u1 = 0x0,
                ///  External Event 10
                EXTEVNT10: u1 = 0x0,
                ///  Timer A Compare 1
                TIMACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TIMACMP2: u1 = 0x0,
                ///  Timer A Compare 4
                TIMACMP4: u1 = 0x0,
                ///  Timer B Compare 1
                TIMBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TIMBCMP2: u1 = 0x0,
                ///  Timer B Compare 4
                TIMBCMP4: u1 = 0x0,
                ///  Timer C Compare 1
                TIMCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TIMCCMP2: u1 = 0x0,
                ///  Timer C Compare 4
                TIMCCMP4: u1 = 0x0,
                ///  Timer D Compare 1
                TIMDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TIMDCMP2: u1 = 0x0,
                ///  Timer D Compare 4
                TIMDCMP4: u1 = 0x0,
                ///  Timer F Compare 2
                TIMFCPM2: u1 = 0x0,
            }),
            ///  Timerx Chopper Register
            CHPFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timerx carrier frequency value
                CHPFRQ: u4 = 0x0,
                ///  Timerx chopper duty cycle value
                CHPDTY: u3 = 0x0,
                ///  STRTPW
                STRTPW: u4 = 0x0,
                padding: u21 = 0x0,
            }),
            ///  Timerx Capture 2 Control Register
            CPT1FCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  TE1SET
                TE1SET: u1 = 0x0,
                ///  TE1RST
                TE1RST: u1 = 0x0,
                ///  TECMP1
                TECMP1: u1 = 0x0,
                ///  TECMP2
                TECMP2: u1 = 0x0,
            }),
            ///  CPT2xCR
            CPT2FCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Software Capture
                SWCPT: u1 = 0x0,
                ///  Update Capture
                UDPCPT: u1 = 0x0,
                ///  External Event 1 Capture
                EXEV1CPT: u1 = 0x0,
                ///  External Event 2 Capture
                EXEV2CPT: u1 = 0x0,
                ///  External Event 3 Capture
                EXEV3CPT: u1 = 0x0,
                ///  External Event 4 Capture
                EXEV4CPT: u1 = 0x0,
                ///  External Event 5 Capture
                EXEV5CPT: u1 = 0x0,
                ///  External Event 6 Capture
                EXEV6CPT: u1 = 0x0,
                ///  External Event 7 Capture
                EXEV7CPT: u1 = 0x0,
                ///  External Event 8 Capture
                EXEV8CPT: u1 = 0x0,
                ///  External Event 9 Capture
                EXEV9CPT: u1 = 0x0,
                ///  External Event 10 Capture
                EXEV10CPT: u1 = 0x0,
                ///  Timer A output 1 Set
                TA1SET: u1 = 0x0,
                ///  Timer A output 1 Reset
                TA1RST: u1 = 0x0,
                ///  Timer A Compare 1
                TACMP1: u1 = 0x0,
                ///  Timer A Compare 2
                TACMP2: u1 = 0x0,
                ///  Timer B output 1 Set
                TB1SET: u1 = 0x0,
                ///  Timer B output 1 Reset
                TB1RST: u1 = 0x0,
                ///  Timer B Compare 1
                TBCMP1: u1 = 0x0,
                ///  Timer B Compare 2
                TBCMP2: u1 = 0x0,
                ///  Timer C output 1 Set
                TC1SET: u1 = 0x0,
                ///  Timer C output 1 Reset
                TC1RST: u1 = 0x0,
                ///  Timer C Compare 1
                TCCMP1: u1 = 0x0,
                ///  Timer C Compare 2
                TCCMP2: u1 = 0x0,
                ///  Timer D output 1 Set
                TD1SET: u1 = 0x0,
                ///  Timer D output 1 Reset
                TD1RST: u1 = 0x0,
                ///  Timer D Compare 1
                TDCMP1: u1 = 0x0,
                ///  Timer D Compare 2
                TDCMP2: u1 = 0x0,
                ///  TE1SET
                TE1SET: u1 = 0x0,
                ///  TE1RST
                TE1RST: u1 = 0x0,
                ///  TECMP1
                TECMP1: u1 = 0x0,
                ///  TECMP2
                TECMP2: u1 = 0x0,
            }),
            ///  Timerx Output Register
            OUTFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                reserved1: u1 = 0x0,
                ///  Output 1 polarity
                POL1: u1 = 0x0,
                ///  Output 1 Idle mode
                IDLEM1: u1 = 0x0,
                ///  Output 1 Idle State
                IDLES1: u1 = 0x0,
                ///  Output 1 Fault state
                FAULT1: u2 = 0x0,
                ///  Output 1 Chopper enable
                CHP1: u1 = 0x0,
                ///  Output 1 Deadtime upon burst mode Idle entry
                DIDL1: u1 = 0x0,
                ///  Deadtime enable
                DTEN: u1 = 0x0,
                ///  Delayed Protection Enable
                DLYPRTEN: u1 = 0x0,
                ///  Delayed Protection
                DLYPRT: u3 = 0x0,
                reserved14: u1 = 0x0,
                ///  Balanced Idle Automatic Resume
                BIAR: u1 = 0x0,
                reserved17: u2 = 0x0,
                ///  Output 2 polarity
                POL2: u1 = 0x0,
                ///  Output 2 Idle mode
                IDLEM2: u1 = 0x0,
                ///  Output 2 Idle State
                IDLES2: u1 = 0x0,
                ///  Output 2 Fault state
                FAULT2: u2 = 0x0,
                ///  Output 2 Chopper enable
                CHP2: u1 = 0x0,
                ///  Output 2 Deadtime upon burst mode Idle entry
                DIDL2: u1 = 0x0,
                padding: u8 = 0x0,
            }),
            ///  Timerx Fault Register
            FLTFR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Fault 1 enable
                FLT1EN: u1 = 0x0,
                ///  Fault 2 enable
                FLT2EN: u1 = 0x0,
                ///  Fault 3 enable
                FLT3EN: u1 = 0x0,
                ///  Fault 4 enable
                FLT4EN: u1 = 0x0,
                ///  Fault 5 enable
                FLT5EN: u1 = 0x0,
                ///  Fault 6 enable
                FLT6EN: u1 = 0x0,
                reserved31: u25 = 0x0,
                ///  Fault sources Lock
                FLTLCK: u1 = 0x0,
            }),
            ///  HRTIM Timerx Control Register 2
            TIMFCR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Dual Channel DAC trigger enable
                DCDE: u1 = 0x0,
                ///  Dual Channel DAC Step trigger
                DCDS: u1 = 0x0,
                ///  Dual Channel DAC Reset trigger
                DCDR: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  Up-Down Mode
                UDM: u1 = 0x0,
                reserved6: u1 = 0x0,
                ///  Roll-Over Mode
                ROM: u2 = 0x0,
                ///  Output Roll-Over Mode
                OUTROM: u2 = 0x0,
                ///  ADC Roll-Over Mode
                ADROM: u2 = 0x0,
                ///  Burst Mode Roll-Over Mode
                BMROM: u2 = 0x0,
                ///  Fault and Event Roll-Over Mode
                FEROM: u2 = 0x0,
                ///  Greater than Compare 1 PWM mode
                GTCMP1: u1 = 0x0,
                ///  Greater than Compare 3 PWM mode
                GTCMP3: u1 = 0x0,
                reserved20: u2 = 0x0,
                ///  Triggered-half mode
                TRGHLF: u1 = 0x0,
                padding: u11 = 0x0,
            }),
            ///  HRTIM Timerx External Event Filtering Register 3
            FEEFR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event A Counter Enable
                EEVACE: u1 = 0x0,
                ///  External Event A Counter Reset
                EEVACRES: u1 = 0x0,
                ///  External Event A Reset Mode
                EEVARSTM: u1 = 0x0,
                reserved4: u1 = 0x0,
                ///  External Event A Selection
                EEVASEL: u4 = 0x0,
                ///  External Event A counter
                EEVACNT: u6 = 0x0,
                padding: u18 = 0x0,
            }),
        };

        ///  High Resolution Timer: Common functions
        pub const HRTIM_Common = extern struct {
            ///  Control Register 1
            CR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Master Update Disable
                MUDIS: u1 = 0x0,
                ///  Timer A Update Disable
                TAUDIS: u1 = 0x0,
                ///  Timer B Update Disable
                TBUDIS: u1 = 0x0,
                ///  Timer C Update Disable
                TCUDIS: u1 = 0x0,
                ///  Timer D Update Disable
                TDUDIS: u1 = 0x0,
                ///  Timer E Update Disable
                TEUDIS: u1 = 0x0,
                ///  Timer f Update Disable
                TFUDIS: u1 = 0x0,
                reserved16: u9 = 0x0,
                ///  ADC Trigger 1 Update Source
                AD1USRC: u3 = 0x0,
                ///  ADC Trigger 2 Update Source
                AD2USRC: u3 = 0x0,
                ///  ADC Trigger 3 Update Source
                AD3USRC: u3 = 0x0,
                ///  ADC Trigger 4 Update Source
                AD4USRC: u3 = 0x0,
                padding: u4 = 0x0,
            }),
            ///  Control Register 2
            CR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Master Timer Software update
                MSWU: u1 = 0x0,
                ///  Timer A Software update
                TASWU: u1 = 0x0,
                ///  Timer B Software Update
                TBSWU: u1 = 0x0,
                ///  Timer C Software Update
                TCSWU: u1 = 0x0,
                ///  Timer D Software Update
                TDSWU: u1 = 0x0,
                ///  Timer E Software Update
                TESWU: u1 = 0x0,
                ///  Timer f Software Update
                TFSWU: u1 = 0x0,
                reserved8: u1 = 0x0,
                ///  Master Counter software reset
                MRST: u1 = 0x0,
                ///  Timer A counter software reset
                TARST: u1 = 0x0,
                ///  Timer B counter software reset
                TBRST: u1 = 0x0,
                ///  Timer C counter software reset
                TCRST: u1 = 0x0,
                ///  Timer D counter software reset
                TDRST: u1 = 0x0,
                ///  Timer E counter software reset
                TERST: u1 = 0x0,
                ///  Timer f counter software reset
                TFRST: u1 = 0x0,
                reserved16: u1 = 0x0,
                ///  Swap Timer A outputs
                SWPA: u1 = 0x0,
                ///  Swap Timer B outputs
                SWPB: u1 = 0x0,
                ///  Swap Timer C outputs
                SWPC: u1 = 0x0,
                ///  Swap Timer D outputs
                SWPD: u1 = 0x0,
                ///  Swap Timer E outputs
                SWPE: u1 = 0x0,
                ///  Swap Timer F outputs
                SWPF: u1 = 0x0,
                padding: u10 = 0x0,
            }),
            ///  Interrupt Status Register
            ISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Fault 1 Interrupt Flag
                FLT1: u1 = 0x0,
                ///  Fault 2 Interrupt Flag
                FLT2: u1 = 0x0,
                ///  Fault 3 Interrupt Flag
                FLT3: u1 = 0x0,
                ///  Fault 4 Interrupt Flag
                FLT4: u1 = 0x0,
                ///  Fault 5 Interrupt Flag
                FLT5: u1 = 0x0,
                ///  System Fault Interrupt Flag
                SYSFLT: u1 = 0x0,
                ///  Fault 6 Interrupt Flag
                FLT6: u1 = 0x0,
                reserved16: u9 = 0x0,
                ///  DLL Ready Interrupt Flag
                DLLRDY: u1 = 0x0,
                ///  Burst mode Period Interrupt Flag
                BMPER: u1 = 0x0,
                padding: u14 = 0x0,
            }),
            ///  Interrupt Clear Register
            ICR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Fault 1 Interrupt Flag Clear
                FLT1C: u1 = 0x0,
                ///  Fault 2 Interrupt Flag Clear
                FLT2C: u1 = 0x0,
                ///  Fault 3 Interrupt Flag Clear
                FLT3C: u1 = 0x0,
                ///  Fault 4 Interrupt Flag Clear
                FLT4C: u1 = 0x0,
                ///  Fault 5 Interrupt Flag Clear
                FLT5C: u1 = 0x0,
                ///  System Fault Interrupt Flag Clear
                SYSFLTC: u1 = 0x0,
                ///  Fault 6 Interrupt Flag Clear
                FLT6C: u1 = 0x0,
                reserved16: u9 = 0x0,
                ///  DLL Ready Interrupt flag Clear
                DLLRDYC: u1 = 0x0,
                ///  Burst mode period flag Clear
                BMPERC: u1 = 0x0,
                padding: u14 = 0x0,
            }),
            ///  Interrupt Enable Register
            IER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Fault 1 Interrupt Enable
                FLT1IE: u1 = 0x0,
                ///  Fault 2 Interrupt Enable
                FLT2IE: u1 = 0x0,
                ///  Fault 3 Interrupt Enable
                FLT3IE: u1 = 0x0,
                ///  Fault 4 Interrupt Enable
                FLT4IE: u1 = 0x0,
                ///  Fault 5 Interrupt Enable
                FLT5IE: u1 = 0x0,
                ///  System Fault Interrupt Enable
                SYSFLTE: u1 = 0x0,
                ///  Fault 6 Interrupt Enable
                FLT6IE: u1 = 0x0,
                reserved16: u9 = 0x0,
                ///  DLL Ready Interrupt Enable
                DLLRDYIE: u1 = 0x0,
                ///  Burst mode period Interrupt Enable
                BMPERIE: u1 = 0x0,
                padding: u14 = 0x0,
            }),
            ///  Output Enable Register
            OENR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timer A Output 1 Enable
                TA1OEN: u1 = 0x0,
                ///  Timer A Output 2 Enable
                TA2OEN: u1 = 0x0,
                ///  Timer B Output 1 Enable
                TB1OEN: u1 = 0x0,
                ///  Timer B Output 2 Enable
                TB2OEN: u1 = 0x0,
                ///  Timer C Output 1 Enable
                TC1OEN: u1 = 0x0,
                ///  Timer C Output 2 Enable
                TC2OEN: u1 = 0x0,
                ///  Timer D Output 1 Enable
                TD1OEN: u1 = 0x0,
                ///  Timer D Output 2 Enable
                TD2OEN: u1 = 0x0,
                ///  Timer E Output 1 Enable
                TE1OEN: u1 = 0x0,
                ///  Timer E Output 2 Enable
                TE2OEN: u1 = 0x0,
                ///  Timer F Output 1 disable status
                TF1ODS: u1 = 0x0,
                ///  Timer F Output 2 disable status
                TF2ODS: u1 = 0x0,
                padding: u20 = 0x0,
            }),
            ///  ODISR
            ODISR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  TA1ODIS
                TA1ODIS: u1 = 0x0,
                ///  TA2ODIS
                TA2ODIS: u1 = 0x0,
                ///  TB1ODIS
                TB1ODIS: u1 = 0x0,
                ///  TB2ODIS
                TB2ODIS: u1 = 0x0,
                ///  TC1ODIS
                TC1ODIS: u1 = 0x0,
                ///  TC2ODIS
                TC2ODIS: u1 = 0x0,
                ///  TD1ODIS
                TD1ODIS: u1 = 0x0,
                ///  TD2ODIS
                TD2ODIS: u1 = 0x0,
                ///  TE1ODIS
                TE1ODIS: u1 = 0x0,
                ///  TE2ODIS
                TE2ODIS: u1 = 0x0,
                ///  TF1ODIS
                TF1ODIS: u1 = 0x0,
                ///  TF2ODIS
                TF2ODIS: u1 = 0x0,
                padding: u20 = 0x0,
            }),
            ///  Output Disable Status Register
            ODSR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Timer A Output 1 disable status
                TA1ODS: u1 = 0x0,
                ///  Timer A Output 2 disable status
                TA2ODS: u1 = 0x0,
                ///  Timer B Output 1 disable status
                TB1ODS: u1 = 0x0,
                ///  Timer B Output 2 disable status
                TB2ODS: u1 = 0x0,
                ///  Timer C Output 1 disable status
                TC1ODS: u1 = 0x0,
                ///  Timer C Output 2 disable status
                TC2ODS: u1 = 0x0,
                ///  Timer D Output 1 disable status
                TD1ODS: u1 = 0x0,
                ///  Timer D Output 2 disable status
                TD2ODS: u1 = 0x0,
                ///  Timer E Output 1 disable status
                TE1ODS: u1 = 0x0,
                ///  Timer E Output 2 disable status
                TE2ODS: u1 = 0x0,
                ///  TF1ODS
                TF1ODS: u1 = 0x0,
                ///  TF2ODS
                TF2ODS: u1 = 0x0,
                padding: u20 = 0x0,
            }),
            ///  Burst Mode Control Register
            BMCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Burst Mode enable
                BME: u1 = 0x0,
                ///  Burst Mode operating mode
                BMOM: u1 = 0x0,
                ///  Burst Mode Clock source
                BMCLK: u4 = 0x0,
                ///  Burst Mode Prescaler
                BMPRSC: u4 = 0x0,
                ///  Burst Mode Preload Enable
                BMPREN: u1 = 0x0,
                reserved16: u5 = 0x0,
                ///  Master Timer Burst Mode
                MTBM: u1 = 0x0,
                ///  Timer A Burst Mode
                TABM: u1 = 0x0,
                ///  Timer B Burst Mode
                TBBM: u1 = 0x0,
                ///  Timer C Burst Mode
                TCBM: u1 = 0x0,
                ///  Timer D Burst Mode
                TDBM: u1 = 0x0,
                ///  Timer E Burst Mode
                TEBM: u1 = 0x0,
                ///  Timer f Burst Mode
                TFBM: u1 = 0x0,
                reserved31: u8 = 0x0,
                ///  Burst Mode Status
                BMSTAT: u1 = 0x0,
            }),
            ///  BMTRG
            BMTRG: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  SW
                SW: u1 = 0x0,
                ///  MSTRST
                MSTRST: u1 = 0x0,
                ///  MSTREP
                MSTREP: u1 = 0x0,
                ///  MSTCMP1
                MSTCMP1: u1 = 0x0,
                ///  MSTCMP2
                MSTCMP2: u1 = 0x0,
                ///  MSTCMP3
                MSTCMP3: u1 = 0x0,
                ///  MSTCMP4
                MSTCMP4: u1 = 0x0,
                ///  TARST
                TARST: u1 = 0x0,
                ///  TAREP
                TAREP: u1 = 0x0,
                ///  TACMP1
                TACMP1: u1 = 0x0,
                ///  TACMP2
                TACMP2: u1 = 0x0,
                ///  TBRST
                TBRST: u1 = 0x0,
                ///  TBREP
                TBREP: u1 = 0x0,
                ///  TBCMP1
                TBCMP1: u1 = 0x0,
                ///  TBCMP2
                TBCMP2: u1 = 0x0,
                ///  TCRST
                TCRST: u1 = 0x0,
                ///  TCREP
                TCREP: u1 = 0x0,
                ///  TCCMP1
                TCCMP1: u1 = 0x0,
                ///  TCCMP2
                TCCMP2: u1 = 0x0,
                ///  TDRST
                TDRST: u1 = 0x0,
                ///  TDREP
                TDREP: u1 = 0x0,
                ///  TDCMP1
                TDCMP1: u1 = 0x0,
                ///  TDCMP2
                TDCMP2: u1 = 0x0,
                ///  TERST
                TERST: u1 = 0x0,
                ///  TEREP
                TEREP: u1 = 0x0,
                ///  TECMP1
                TECMP1: u1 = 0x0,
                ///  TECMP2
                TECMP2: u1 = 0x0,
                ///  TDEEV7
                TDEEV7: u1 = 0x0,
                ///  TDEEV8
                TDEEV8: u1 = 0x0,
                ///  EEV7
                EEV7: u1 = 0x0,
                ///  EEV8
                EEV8: u1 = 0x0,
                ///  OCHPEV
                OCHPEV: u1 = 0x0,
            }),
            ///  BMCMPR
            BMCMPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  BMCMP
                BMCMP: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Burst Mode Period Register
            BMPER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Burst mode Period
                BMPER: u16 = 0x0,
                padding: u16 = 0x0,
            }),
            ///  Timer External Event Control Register 1
            EECR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  External Event 1 Source
                EE1SRC: u2 = 0x0,
                ///  External Event 1 Polarity
                EE1POL: u1 = 0x0,
                ///  External Event 1 Sensitivity
                EE1SNS: u2 = 0x0,
                ///  External Event 1 Fast mode
                EE1FAST: u1 = 0x0,
                ///  External Event 2 Source
                EE2SRC: u2 = 0x0,
                ///  External Event 2 Polarity
                EE2POL: u1 = 0x0,
                ///  External Event 2 Sensitivity
                EE2SNS: u2 = 0x0,
                ///  External Event 2 Fast mode
                EE2FAST: u1 = 0x0,
                ///  External Event 3 Source
                EE3SRC: u2 = 0x0,
                ///  External Event 3 Polarity
                EE3POL: u1 = 0x0,
                ///  External Event 3 Sensitivity
                EE3SNS: u2 = 0x0,
                ///  External Event 3 Fast mode
                EE3FAST: u1 = 0x0,
                ///  External Event 4 Source
                EE4SRC: u2 = 0x0,
                ///  External Event 4 Polarity
                EE4POL: u1 = 0x0,
                ///  External Event 4 Sensitivity
                EE4SNS: u2 = 0x0,
                ///  External Event 4 Fast mode
                EE4FAST: u1 = 0x0,
                ///  External Event 5 Source
                EE5SRC: u2 = 0x0,
                ///  External Event 5 Polarity
                EE5POL: u1 = 0x0,
                ///  External Event 5 Sensitivity
                EE5SNS: u2 = 0x0,
                ///  External Event 5 Fast mode
                EE5FAST: u1 = 0x0,
                padding: u2 = 0x0,
            }),
            ///  Timer External Event Control Register 2
            EECR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EE6SRC
                EE6SRC: u2 = 0x0,
                ///  EE6POL
                EE6POL: u1 = 0x0,
                ///  EE6SNS
                EE6SNS: u2 = 0x0,
                reserved6: u1 = 0x0,
                ///  EE7SRC
                EE7SRC: u2 = 0x0,
                ///  EE7POL
                EE7POL: u1 = 0x0,
                ///  EE7SNS
                EE7SNS: u2 = 0x0,
                reserved12: u1 = 0x0,
                ///  EE8SRC
                EE8SRC: u2 = 0x0,
                ///  EE8POL
                EE8POL: u1 = 0x0,
                ///  EE8SNS
                EE8SNS: u2 = 0x0,
                reserved18: u1 = 0x0,
                ///  EE9SRC
                EE9SRC: u2 = 0x0,
                ///  EE9POL
                EE9POL: u1 = 0x0,
                ///  EE9SNS
                EE9SNS: u2 = 0x0,
                reserved24: u1 = 0x0,
                ///  EE10SRC
                EE10SRC: u2 = 0x0,
                ///  EE10POL
                EE10POL: u1 = 0x0,
                ///  EE10SNS
                EE10SNS: u2 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  Timer External Event Control Register 3
            EECR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  EE6F
                EE6F: u4 = 0x0,
                reserved6: u2 = 0x0,
                ///  EE7F
                EE7F: u4 = 0x0,
                reserved12: u2 = 0x0,
                ///  EE8F
                EE8F: u4 = 0x0,
                reserved18: u2 = 0x0,
                ///  EE9F
                EE9F: u4 = 0x0,
                reserved24: u2 = 0x0,
                ///  EE10F
                EE10F: u4 = 0x0,
                reserved30: u2 = 0x0,
                ///  EEVSD
                EEVSD: u2 = 0x0,
            }),
            ///  ADC Trigger 1 Register
            ADC1R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADC trigger 1 on Master Compare 1
                AD1MC1: u1 = 0x0,
                ///  ADC trigger 1 on Master Compare 2
                AD1MC2: u1 = 0x0,
                ///  ADC trigger 1 on Master Compare 3
                AD1MC3: u1 = 0x0,
                ///  ADC trigger 1 on Master Compare 4
                AD1MC4: u1 = 0x0,
                ///  ADC trigger 1 on Master Period
                AD1MPER: u1 = 0x0,
                ///  ADC trigger 1 on External Event 1
                AD1EEV1: u1 = 0x0,
                ///  ADC trigger 1 on External Event 2
                AD1EEV2: u1 = 0x0,
                ///  ADC trigger 1 on External Event 3
                AD1EEV3: u1 = 0x0,
                ///  ADC trigger 1 on External Event 4
                AD1EEV4: u1 = 0x0,
                ///  ADC trigger 1 on External Event 5
                AD1EEV5: u1 = 0x0,
                ///  ADC trigger 1 on Timer A compare 2
                AD1TAC2: u1 = 0x0,
                ///  ADC trigger 1 on Timer A compare 3
                AD1TAC3: u1 = 0x0,
                ///  ADC trigger 1 on Timer A compare 4
                AD1TAC4: u1 = 0x0,
                ///  ADC trigger 1 on Timer A Period
                AD1TAPER: u1 = 0x0,
                ///  ADC trigger 1 on Timer A Reset
                AD1TARST: u1 = 0x0,
                ///  ADC trigger 1 on Timer B compare 2
                AD1TBC2: u1 = 0x0,
                ///  ADC trigger 1 on Timer B compare 3
                AD1TBC3: u1 = 0x0,
                ///  ADC trigger 1 on Timer B compare 4
                AD1TBC4: u1 = 0x0,
                ///  ADC trigger 1 on Timer B Period
                AD1TBPER: u1 = 0x0,
                ///  ADC trigger 1 on Timer B Reset
                AD1TBRST: u1 = 0x0,
                ///  ADC trigger 1 on Timer C compare 2
                AD1TCC2: u1 = 0x0,
                ///  ADC trigger 1 on Timer C compare 3
                AD1TCC3: u1 = 0x0,
                ///  ADC trigger 1 on Timer C compare 4
                AD1TCC4: u1 = 0x0,
                ///  ADC trigger 1 on Timer C Period
                AD1TCPER: u1 = 0x0,
                ///  ADC trigger 1 on Timer D compare 2
                AD1TDC2: u1 = 0x0,
                ///  ADC trigger 1 on Timer D compare 3
                AD1TDC3: u1 = 0x0,
                ///  ADC trigger 1 on Timer D compare 4
                AD1TDC4: u1 = 0x0,
                ///  ADC trigger 1 on Timer D Period
                AD1TDPER: u1 = 0x0,
                ///  ADC trigger 1 on Timer E compare 2
                AD1TEC2: u1 = 0x0,
                ///  ADC trigger 1 on Timer E compare 3
                AD1TEC3: u1 = 0x0,
                ///  ADC trigger 1 on Timer E compare 4
                AD1TEC4: u1 = 0x0,
                ///  ADC trigger 1 on Timer E Period
                AD1TEPER: u1 = 0x0,
            }),
            ///  ADC Trigger 2 Register
            ADC2R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADC trigger 2 on Master Compare 1
                AD2MC1: u1 = 0x0,
                ///  ADC trigger 2 on Master Compare 2
                AD2MC2: u1 = 0x0,
                ///  ADC trigger 2 on Master Compare 3
                AD2MC3: u1 = 0x0,
                ///  ADC trigger 2 on Master Compare 4
                AD2MC4: u1 = 0x0,
                ///  ADC trigger 2 on Master Period
                AD2MPER: u1 = 0x0,
                ///  ADC trigger 2 on External Event 6
                AD2EEV6: u1 = 0x0,
                ///  ADC trigger 2 on External Event 7
                AD2EEV7: u1 = 0x0,
                ///  ADC trigger 2 on External Event 8
                AD2EEV8: u1 = 0x0,
                ///  ADC trigger 2 on External Event 9
                AD2EEV9: u1 = 0x0,
                ///  ADC trigger 2 on External Event 10
                AD2EEV10: u1 = 0x0,
                ///  ADC trigger 2 on Timer A compare 2
                AD2TAC2: u1 = 0x0,
                ///  ADC trigger 2 on Timer A compare 3
                AD2TAC3: u1 = 0x0,
                ///  ADC trigger 2 on Timer A compare 4
                AD2TAC4: u1 = 0x0,
                ///  ADC trigger 2 on Timer A Period
                AD2TAPER: u1 = 0x0,
                ///  ADC trigger 2 on Timer B compare 2
                AD2TBC2: u1 = 0x0,
                ///  ADC trigger 2 on Timer B compare 3
                AD2TBC3: u1 = 0x0,
                ///  ADC trigger 2 on Timer B compare 4
                AD2TBC4: u1 = 0x0,
                ///  ADC trigger 2 on Timer B Period
                AD2TBPER: u1 = 0x0,
                ///  ADC trigger 2 on Timer C compare 2
                AD2TCC2: u1 = 0x0,
                ///  ADC trigger 2 on Timer C compare 3
                AD2TCC3: u1 = 0x0,
                ///  ADC trigger 2 on Timer C compare 4
                AD2TCC4: u1 = 0x0,
                ///  ADC trigger 2 on Timer C Period
                AD2TCPER: u1 = 0x0,
                ///  ADC trigger 2 on Timer C Reset
                AD2TCRST: u1 = 0x0,
                ///  ADC trigger 2 on Timer D compare 2
                AD2TDC2: u1 = 0x0,
                ///  ADC trigger 2 on Timer D compare 3
                AD2TDC3: u1 = 0x0,
                ///  ADC trigger 2 on Timer D compare 4
                AD2TDC4: u1 = 0x0,
                ///  ADC trigger 2 on Timer D Period
                AD2TDPER: u1 = 0x0,
                ///  ADC trigger 2 on Timer D Reset
                AD2TDRST: u1 = 0x0,
                ///  ADC trigger 2 on Timer E compare 2
                AD2TEC2: u1 = 0x0,
                ///  ADC trigger 2 on Timer E compare 3
                AD2TEC3: u1 = 0x0,
                ///  ADC trigger 2 on Timer E compare 4
                AD2TEC4: u1 = 0x0,
                ///  ADC trigger 2 on Timer E Reset
                AD2TERST: u1 = 0x0,
            }),
            ///  ADC Trigger 3 Register
            ADC3R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  AD1MC1
                AD1MC1: u1 = 0x0,
                ///  AD1MC2
                AD1MC2: u1 = 0x0,
                ///  AD1MC3
                AD1MC3: u1 = 0x0,
                ///  AD1MC4
                AD1MC4: u1 = 0x0,
                ///  AD1MPER
                AD1MPER: u1 = 0x0,
                ///  AD1EEV1
                AD1EEV1: u1 = 0x0,
                ///  AD1EEV2
                AD1EEV2: u1 = 0x0,
                ///  AD1EEV3
                AD1EEV3: u1 = 0x0,
                ///  AD1EEV4
                AD1EEV4: u1 = 0x0,
                ///  AD1EEV5
                AD1EEV5: u1 = 0x0,
                ///  AD1TAC2
                AD1TAC2: u1 = 0x0,
                ///  AD1TAC3
                AD1TAC3: u1 = 0x0,
                ///  AD1TAC4
                AD1TAC4: u1 = 0x0,
                ///  AD1TAPER
                AD1TAPER: u1 = 0x0,
                ///  AD1TARST
                AD1TARST: u1 = 0x0,
                ///  AD1TBC2
                AD1TBC2: u1 = 0x0,
                ///  AD1TBC3
                AD1TBC3: u1 = 0x0,
                ///  AD1TBC4
                AD1TBC4: u1 = 0x0,
                ///  AD1TBPER
                AD1TBPER: u1 = 0x0,
                ///  AD1TBRST
                AD1TBRST: u1 = 0x0,
                ///  AD1TCC2
                AD1TCC2: u1 = 0x0,
                ///  AD1TCC3
                AD1TCC3: u1 = 0x0,
                ///  AD1TCC4
                AD1TCC4: u1 = 0x0,
                ///  AD1TCPER
                AD1TCPER: u1 = 0x0,
                ///  AD1TDC2
                AD1TDC2: u1 = 0x0,
                ///  AD1TDC3
                AD1TDC3: u1 = 0x0,
                ///  AD1TDC4
                AD1TDC4: u1 = 0x0,
                ///  AD1TDPER
                AD1TDPER: u1 = 0x0,
                ///  AD1TEC2
                AD1TEC2: u1 = 0x0,
                ///  AD1TEC3
                AD1TEC3: u1 = 0x0,
                ///  AD1TEC4
                AD1TEC4: u1 = 0x0,
                ///  AD1TEPER
                AD1TEPER: u1 = 0x0,
            }),
            ///  ADC Trigger 4 Register
            ADC4R: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  AD2MC1
                AD2MC1: u1 = 0x0,
                ///  AD2MC2
                AD2MC2: u1 = 0x0,
                ///  AD2MC3
                AD2MC3: u1 = 0x0,
                ///  AD2MC4
                AD2MC4: u1 = 0x0,
                ///  AD2MPER
                AD2MPER: u1 = 0x0,
                ///  AD2EEV6
                AD2EEV6: u1 = 0x0,
                ///  AD2EEV7
                AD2EEV7: u1 = 0x0,
                ///  AD2EEV8
                AD2EEV8: u1 = 0x0,
                ///  AD2EEV9
                AD2EEV9: u1 = 0x0,
                ///  AD2EEV10
                AD2EEV10: u1 = 0x0,
                ///  AD2TAC2
                AD2TAC2: u1 = 0x0,
                ///  AD2TAC3
                AD2TAC3: u1 = 0x0,
                ///  AD2TAC4
                AD2TAC4: u1 = 0x0,
                ///  AD2TAPER
                AD2TAPER: u1 = 0x0,
                ///  AD2TBC2
                AD2TBC2: u1 = 0x0,
                ///  AD2TBC3
                AD2TBC3: u1 = 0x0,
                ///  AD2TBC4
                AD2TBC4: u1 = 0x0,
                ///  AD2TBPER
                AD2TBPER: u1 = 0x0,
                ///  AD2TCC2
                AD2TCC2: u1 = 0x0,
                ///  AD2TCC3
                AD2TCC3: u1 = 0x0,
                ///  AD2TCC4
                AD2TCC4: u1 = 0x0,
                ///  AD2TCPER
                AD2TCPER: u1 = 0x0,
                ///  AD2TCRST
                AD2TCRST: u1 = 0x0,
                ///  AD2TDC2
                AD2TDC2: u1 = 0x0,
                ///  AD2TDC3
                AD2TDC3: u1 = 0x0,
                ///  AD2TDC4
                AD2TDC4: u1 = 0x0,
                ///  AD2TDPER
                AD2TDPER: u1 = 0x0,
                ///  AD2TDRST
                AD2TDRST: u1 = 0x0,
                ///  AD2TEC2
                AD2TEC2: u1 = 0x0,
                ///  AD2TEC3
                AD2TEC3: u1 = 0x0,
                ///  AD2TEC4
                AD2TEC4: u1 = 0x0,
                ///  AD2TERST
                AD2TERST: u1 = 0x0,
            }),
            ///  DLL Control Register
            DLLCR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  DLL Calibration Start
                CAL: u1 = 0x0,
                ///  DLL Calibration Enable
                CALEN: u1 = 0x0,
                ///  DLL Calibration rate
                CALRTE: u2 = 0x0,
                padding: u28 = 0x0,
            }),
            ///  HRTIM Fault Input Register 1
            FLTINR1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  FLT1E
                FLT1E: u1 = 0x0,
                ///  FLT1P
                FLT1P: u1 = 0x0,
                ///  FLT1SRC
                FLT1SRC: u1 = 0x0,
                ///  FLT1F
                FLT1F: u4 = 0x0,
                ///  FLT1LCK
                FLT1LCK: u1 = 0x0,
                ///  FLT2E
                FLT2E: u1 = 0x0,
                ///  FLT2P
                FLT2P: u1 = 0x0,
                ///  FLT2SRC
                FLT2SRC: u1 = 0x0,
                ///  FLT2F
                FLT2F: u4 = 0x0,
                ///  FLT2LCK
                FLT2LCK: u1 = 0x0,
                ///  FLT3E
                FLT3E: u1 = 0x0,
                ///  FLT3P
                FLT3P: u1 = 0x0,
                ///  FLT3SRC
                FLT3SRC: u1 = 0x0,
                ///  FLT3F
                FLT3F: u4 = 0x0,
                ///  FLT3LCK
                FLT3LCK: u1 = 0x0,
                ///  FLT4E
                FLT4E: u1 = 0x0,
                ///  FLT4P
                FLT4P: u1 = 0x0,
                ///  FLT4SRC
                FLT4SRC: u1 = 0x0,
                ///  FLT4F
                FLT4F: u4 = 0x0,
                ///  FLT4LCK
                FLT4LCK: u1 = 0x0,
            }),
            ///  HRTIM Fault Input Register 2
            FLTINR2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  FLT5E
                FLT5E: u1 = 0x0,
                ///  FLT5P
                FLT5P: u1 = 0x0,
                ///  FLT5SRC
                FLT5SRC: u1 = 0x0,
                ///  FLT5F
                FLT5F: u4 = 0x0,
                ///  FLT5LCK
                FLT5LCK: u1 = 0x0,
                ///  FLT6E
                FLT6E: u1 = 0x0,
                ///  FLT6P
                FLT6P: u1 = 0x0,
                ///  FLT6F
                FLT6SRC_0: u1 = 0x0,
                ///  FLT6F
                FLT6F: u4 = 0x0,
                ///  FLT6LCK
                FLT6LCK: u1 = 0x0,
                ///  FLT1SRC_1
                FLT1SRC_1: u1 = 0x0,
                ///  FLT2SRC_1
                FLT2SRC_1: u1 = 0x0,
                ///  FLT3SRC_1
                FLT3SRC_1: u1 = 0x0,
                ///  FLT4SRC_1
                FLT4SRC_1: u1 = 0x0,
                ///  FLT5SRC_1
                FLT5SRC_1: u1 = 0x0,
                ///  FLT6SRC
                FLT6SRC_1: u1 = 0x0,
                reserved24: u2 = 0x0,
                ///  FLTSD
                FLTSD: u2 = 0x0,
                padding: u6 = 0x0,
            }),
            ///  BDMUPDR
            BDMUPDR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  MCR
                MCR: u1 = 0x0,
                ///  MICR
                MICR: u1 = 0x0,
                ///  MDIER
                MDIER: u1 = 0x0,
                ///  MCNT
                MCNT: u1 = 0x0,
                ///  MPER
                MPER: u1 = 0x0,
                ///  MREP
                MREP: u1 = 0x0,
                ///  MCMP1
                MCMP1: u1 = 0x0,
                ///  MCMP2
                MCMP2: u1 = 0x0,
                ///  MCMP3
                MCMP3: u1 = 0x0,
                ///  MCMP4
                MCMP4: u1 = 0x0,
                padding: u22 = 0x0,
            }),
            ///  Burst DMA Timerx update Register
            BDTAUPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM_TIMxCR register update enable
                TIMxCR: u1 = 0x0,
                ///  HRTIM_TIMxICR register update enable
                TIMxICR: u1 = 0x0,
                ///  HRTIM_TIMxDIER register update enable
                TIMxDIER: u1 = 0x0,
                ///  HRTIM_CNTxR register update enable
                TIMxCNT: u1 = 0x0,
                ///  HRTIM_PERxR register update enable
                TIMxPER: u1 = 0x0,
                ///  HRTIM_REPxR register update enable
                TIMxREP: u1 = 0x0,
                ///  HRTIM_CMP1xR register update enable
                TIMxCMP1: u1 = 0x0,
                ///  HRTIM_CMP2xR register update enable
                TIMxCMP2: u1 = 0x0,
                ///  HRTIM_CMP3xR register update enable
                TIMxCMP3: u1 = 0x0,
                ///  HRTIM_CMP4xR register update enable
                TIMxCMP4: u1 = 0x0,
                ///  HRTIM_DTxR register update enable
                TIMx_DTxR: u1 = 0x0,
                ///  HRTIM_SET1xR register update enable
                TIMxSET1R: u1 = 0x0,
                ///  HRTIM_RST1xR register update enable
                TIMxRST1R: u1 = 0x0,
                ///  HRTIM_SET2xR register update enable
                TIMxSET2R: u1 = 0x0,
                ///  HRTIM_RST2xR register update enable
                TIMxRST2R: u1 = 0x0,
                ///  HRTIM_EEFxR1 register update enable
                TIMxEEFR1: u1 = 0x0,
                ///  HRTIM_EEFxR2 register update enable
                TIMxEEFR2: u1 = 0x0,
                ///  HRTIM_RSTxR register update enable
                TIMxRSTR: u1 = 0x0,
                ///  HRTIM_CHPxR register update enable
                TIMxCHPR: u1 = 0x0,
                ///  HRTIM_OUTxR register update enable
                TIMxOUTR: u1 = 0x0,
                ///  HRTIM_FLTxR register update enable
                TIMxFLTR: u1 = 0x0,
                ///  TIMxCR2
                TIMxCR2: u1 = 0x0,
                ///  TIMxEEFR3
                TIMxEEFR3: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  Burst DMA Timerx update Register
            BDTBUPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM_TIMxCR register update enable
                TIMxCR: u1 = 0x0,
                ///  HRTIM_TIMxICR register update enable
                TIMxICR: u1 = 0x0,
                ///  HRTIM_TIMxDIER register update enable
                TIMxDIER: u1 = 0x0,
                ///  HRTIM_CNTxR register update enable
                TIMxCNT: u1 = 0x0,
                ///  HRTIM_PERxR register update enable
                TIMxPER: u1 = 0x0,
                ///  HRTIM_REPxR register update enable
                TIMxREP: u1 = 0x0,
                ///  HRTIM_CMP1xR register update enable
                TIMxCMP1: u1 = 0x0,
                ///  HRTIM_CMP2xR register update enable
                TIMxCMP2: u1 = 0x0,
                ///  HRTIM_CMP3xR register update enable
                TIMxCMP3: u1 = 0x0,
                ///  HRTIM_CMP4xR register update enable
                TIMxCMP4: u1 = 0x0,
                ///  HRTIM_DTxR register update enable
                TIMx_DTxR: u1 = 0x0,
                ///  HRTIM_SET1xR register update enable
                TIMxSET1R: u1 = 0x0,
                ///  HRTIM_RST1xR register update enable
                TIMxRST1R: u1 = 0x0,
                ///  HRTIM_SET2xR register update enable
                TIMxSET2R: u1 = 0x0,
                ///  HRTIM_RST2xR register update enable
                TIMxRST2R: u1 = 0x0,
                ///  HRTIM_EEFxR1 register update enable
                TIMxEEFR1: u1 = 0x0,
                ///  HRTIM_EEFxR2 register update enable
                TIMxEEFR2: u1 = 0x0,
                ///  HRTIM_RSTxR register update enable
                TIMxRSTR: u1 = 0x0,
                ///  HRTIM_CHPxR register update enable
                TIMxCHPR: u1 = 0x0,
                ///  HRTIM_OUTxR register update enable
                TIMxOUTR: u1 = 0x0,
                ///  HRTIM_FLTxR register update enable
                TIMxFLTR: u1 = 0x0,
                ///  TIMxCR2
                TIMxCR2: u1 = 0x0,
                ///  TIMxEEFR3
                TIMxEEFR3: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  Burst DMA Timerx update Register
            BDTCUPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM_TIMxCR register update enable
                TIMxCR: u1 = 0x0,
                ///  HRTIM_TIMxICR register update enable
                TIMxICR: u1 = 0x0,
                ///  HRTIM_TIMxDIER register update enable
                TIMxDIER: u1 = 0x0,
                ///  HRTIM_CNTxR register update enable
                TIMxCNT: u1 = 0x0,
                ///  HRTIM_PERxR register update enable
                TIMxPER: u1 = 0x0,
                ///  HRTIM_REPxR register update enable
                TIMxREP: u1 = 0x0,
                ///  HRTIM_CMP1xR register update enable
                TIMxCMP1: u1 = 0x0,
                ///  HRTIM_CMP2xR register update enable
                TIMxCMP2: u1 = 0x0,
                ///  HRTIM_CMP3xR register update enable
                TIMxCMP3: u1 = 0x0,
                ///  HRTIM_CMP4xR register update enable
                TIMxCMP4: u1 = 0x0,
                ///  HRTIM_DTxR register update enable
                TIMx_DTxR: u1 = 0x0,
                ///  HRTIM_SET1xR register update enable
                TIMxSET1R: u1 = 0x0,
                ///  HRTIM_RST1xR register update enable
                TIMxRST1R: u1 = 0x0,
                ///  HRTIM_SET2xR register update enable
                TIMxSET2R: u1 = 0x0,
                ///  HRTIM_RST2xR register update enable
                TIMxRST2R: u1 = 0x0,
                ///  HRTIM_EEFxR1 register update enable
                TIMxEEFR1: u1 = 0x0,
                ///  HRTIM_EEFxR2 register update enable
                TIMxEEFR2: u1 = 0x0,
                ///  HRTIM_RSTxR register update enable
                TIMxRSTR: u1 = 0x0,
                ///  HRTIM_CHPxR register update enable
                TIMxCHPR: u1 = 0x0,
                ///  HRTIM_OUTxR register update enable
                TIMxOUTR: u1 = 0x0,
                ///  HRTIM_FLTxR register update enable
                TIMxFLTR: u1 = 0x0,
                ///  TIMxCR2
                TIMxCR2: u1 = 0x0,
                ///  TIMxEEFR3
                TIMxEEFR3: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  Burst DMA Timerx update Register
            BDTDUPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM_TIMxCR register update enable
                TIMxCR: u1 = 0x0,
                ///  HRTIM_TIMxICR register update enable
                TIMxICR: u1 = 0x0,
                ///  HRTIM_TIMxDIER register update enable
                TIMxDIER: u1 = 0x0,
                ///  HRTIM_CNTxR register update enable
                TIMxCNT: u1 = 0x0,
                ///  HRTIM_PERxR register update enable
                TIMxPER: u1 = 0x0,
                ///  HRTIM_REPxR register update enable
                TIMxREP: u1 = 0x0,
                ///  HRTIM_CMP1xR register update enable
                TIMxCMP1: u1 = 0x0,
                ///  HRTIM_CMP2xR register update enable
                TIMxCMP2: u1 = 0x0,
                ///  HRTIM_CMP3xR register update enable
                TIMxCMP3: u1 = 0x0,
                ///  HRTIM_CMP4xR register update enable
                TIMxCMP4: u1 = 0x0,
                ///  HRTIM_DTxR register update enable
                TIMx_DTxR: u1 = 0x0,
                ///  HRTIM_SET1xR register update enable
                TIMxSET1R: u1 = 0x0,
                ///  HRTIM_RST1xR register update enable
                TIMxRST1R: u1 = 0x0,
                ///  HRTIM_SET2xR register update enable
                TIMxSET2R: u1 = 0x0,
                ///  HRTIM_RST2xR register update enable
                TIMxRST2R: u1 = 0x0,
                ///  HRTIM_EEFxR1 register update enable
                TIMxEEFR1: u1 = 0x0,
                ///  HRTIM_EEFxR2 register update enable
                TIMxEEFR2: u1 = 0x0,
                ///  HRTIM_RSTxR register update enable
                TIMxRSTR: u1 = 0x0,
                ///  HRTIM_CHPxR register update enable
                TIMxCHPR: u1 = 0x0,
                ///  HRTIM_OUTxR register update enable
                TIMxOUTR: u1 = 0x0,
                ///  HRTIM_FLTxR register update enable
                TIMxFLTR: u1 = 0x0,
                ///  TIMxCR2
                TIMxCR2: u1 = 0x0,
                ///  TIMxEEFR3
                TIMxEEFR3: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  Burst DMA Timerx update Register
            BDTEUPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM_TIMxCR register update enable
                TIMxCR: u1 = 0x0,
                ///  HRTIM_TIMxICR register update enable
                TIMxICR: u1 = 0x0,
                ///  HRTIM_TIMxDIER register update enable
                TIMxDIER: u1 = 0x0,
                ///  HRTIM_CNTxR register update enable
                TIMxCNT: u1 = 0x0,
                ///  HRTIM_PERxR register update enable
                TIMxPER: u1 = 0x0,
                ///  HRTIM_REPxR register update enable
                TIMxREP: u1 = 0x0,
                ///  HRTIM_CMP1xR register update enable
                TIMxCMP1: u1 = 0x0,
                ///  HRTIM_CMP2xR register update enable
                TIMxCMP2: u1 = 0x0,
                ///  HRTIM_CMP3xR register update enable
                TIMxCMP3: u1 = 0x0,
                ///  HRTIM_CMP4xR register update enable
                TIMxCMP4: u1 = 0x0,
                ///  HRTIM_DTxR register update enable
                TIMx_DTxR: u1 = 0x0,
                ///  HRTIM_SET1xR register update enable
                TIMxSET1R: u1 = 0x0,
                ///  HRTIM_RST1xR register update enable
                TIMxRST1R: u1 = 0x0,
                ///  HRTIM_SET2xR register update enable
                TIMxSET2R: u1 = 0x0,
                ///  HRTIM_RST2xR register update enable
                TIMxRST2R: u1 = 0x0,
                ///  HRTIM_EEFxR1 register update enable
                TIMxEEFR1: u1 = 0x0,
                ///  HRTIM_EEFxR2 register update enable
                TIMxEEFR2: u1 = 0x0,
                ///  HRTIM_RSTxR register update enable
                TIMxRSTR: u1 = 0x0,
                ///  HRTIM_CHPxR register update enable
                TIMxCHPR: u1 = 0x0,
                ///  HRTIM_OUTxR register update enable
                TIMxOUTR: u1 = 0x0,
                ///  HRTIM_FLTxR register update enable
                TIMxFLTR: u1 = 0x0,
                ///  TIMxCR2
                TIMxCR2: u1 = 0x0,
                ///  TIMxEEFR3
                TIMxEEFR3: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  Burst DMA Data Register
            BDMADR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  Burst DMA Data register
                BDMADR: u32 = 0x0,
            }),
            ///  Burst DMA Timerx update Register
            BDTFUPR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  HRTIM_TIMxCR register update enable
                TIMxCR: u1 = 0x0,
                ///  HRTIM_TIMxICR register update enable
                TIMxICR: u1 = 0x0,
                ///  HRTIM_TIMxDIER register update enable
                TIMxDIER: u1 = 0x0,
                ///  HRTIM_CNTxR register update enable
                TIMxCNT: u1 = 0x0,
                ///  HRTIM_PERxR register update enable
                TIMxPER: u1 = 0x0,
                ///  HRTIM_REPxR register update enable
                TIMxREP: u1 = 0x0,
                ///  HRTIM_CMP1xR register update enable
                TIMxCMP1: u1 = 0x0,
                ///  HRTIM_CMP2xR register update enable
                TIMxCMP2: u1 = 0x0,
                ///  HRTIM_CMP3xR register update enable
                TIMxCMP3: u1 = 0x0,
                ///  HRTIM_CMP4xR register update enable
                TIMxCMP4: u1 = 0x0,
                ///  HRTIM_DTxR register update enable
                TIMx_DTxR: u1 = 0x0,
                ///  HRTIM_SET1xR register update enable
                TIMxSET1R: u1 = 0x0,
                ///  HRTIM_RST1xR register update enable
                TIMxRST1R: u1 = 0x0,
                ///  HRTIM_SET2xR register update enable
                TIMxSET2R: u1 = 0x0,
                ///  HRTIM_RST2xR register update enable
                TIMxRST2R: u1 = 0x0,
                ///  HRTIM_EEFxR1 register update enable
                TIMxEEFR1: u1 = 0x0,
                ///  HRTIM_EEFxR2 register update enable
                TIMxEEFR2: u1 = 0x0,
                ///  HRTIM_RSTxR register update enable
                TIMxRSTR: u1 = 0x0,
                ///  HRTIM_CHPxR register update enable
                TIMxCHPR: u1 = 0x0,
                ///  HRTIM_OUTxR register update enable
                TIMxOUTR: u1 = 0x0,
                ///  HRTIM_FLTxR register update enable
                TIMxFLTR: u1 = 0x0,
                ///  TIMxCR2
                TIMxCR2: u1 = 0x0,
                ///  TIMxEEFR3
                TIMxEEFR3: u1 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  HRTIM ADC Extended Trigger Register
            ADCER: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADC5TRG
                ADC5TRG: u5 = 0x0,
                ///  ADC6TRG
                ADC6TRG: u5 = 0x0,
                ///  ADC7TRG
                ADC7TRG: u5 = 0x0,
                reserved16: u1 = 0x0,
                ///  ADC8TRG
                ADC8TRG: u5 = 0x0,
                ///  ADC9TRG
                ADC9TRG: u5 = 0x0,
                ///  ADC10TRG
                ADC10TRG: u5 = 0x0,
                padding: u1 = 0x0,
            }),
            ///  HRTIM ADC Trigger Update Register
            ADCUR: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  AD5USRC
                AD5USRC: u3 = 0x0,
                reserved4: u1 = 0x0,
                ///  AD6USRC
                AD6USRC: u3 = 0x0,
                reserved8: u1 = 0x0,
                ///  AD7USRC
                AD7USRC: u3 = 0x0,
                reserved12: u1 = 0x0,
                ///  AD8USRC
                AD8USRC: u3 = 0x0,
                reserved16: u1 = 0x0,
                ///  AD9USRC
                AD9USRC: u3 = 0x0,
                reserved20: u1 = 0x0,
                ///  AD10USRC
                AD10USRC: u3 = 0x0,
                padding: u9 = 0x0,
            }),
            ///  HRTIM ADC Post Scaler Register 1
            ADCPS1: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADC1PSC
                ADC1PSC: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  ADC2PSC
                ADC2PSC: u5 = 0x0,
                reserved12: u1 = 0x0,
                ///  ADC3PSC
                ADC3PSC: u5 = 0x0,
                reserved18: u1 = 0x0,
                ///  ADC4PSC
                ADC4PSC: u5 = 0x0,
                reserved24: u1 = 0x0,
                ///  ADC5PSC
                ADC5PSC: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  HRTIM ADC Post Scaler Register 2
            ADCPS2: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  ADC6PSC
                ADC6PSC: u5 = 0x0,
                reserved6: u1 = 0x0,
                ///  ADC7PSC
                ADC7PSC: u5 = 0x0,
                reserved12: u1 = 0x0,
                ///  ADC8PSC
                ADC8PSC: u5 = 0x0,
                reserved18: u1 = 0x0,
                ///  ADC9PSC
                ADC9PSC: u5 = 0x0,
                reserved24: u1 = 0x0,
                ///  ADC10PSC
                ADC10PSC: u5 = 0x0,
                padding: u3 = 0x0,
            }),
            ///  HRTIM Fault Input Register 3
            FLTINR3: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  FLT1BLKE
                FLT1BLKE: u1 = 0x0,
                ///  FLT1BLKS
                FLT1BLKS: u1 = 0x0,
                ///  FLT1CNT
                FLT1CNT: u4 = 0x0,
                ///  FLT1CRES
                FLT1CRES: u1 = 0x0,
                ///  FLT1RSTM
                FLT1RSTM: u1 = 0x0,
                ///  FLT2BLKE
                FLT2BLKE: u1 = 0x0,
                ///  FLT2BLKS
                FLT2BLKS: u1 = 0x0,
                ///  FLT2CNT
                FLT2CNT: u4 = 0x0,
                ///  FLT2CRES
                FLT2CRES: u1 = 0x0,
                ///  FLT2RSTM
                FLT2RSTM: u1 = 0x0,
                ///  FLT3BLKE
                FLT3BLKE: u1 = 0x0,
                ///  FLT3BLKS
                FLT3BLKS: u1 = 0x0,
                ///  FLT3CNT
                FLT3CNT: u4 = 0x0,
                ///  FLT3CRES
                FLT3CRES: u1 = 0x0,
                ///  FLT3RSTM
                FLT3RSTM: u1 = 0x0,
                ///  FLT4BLKE
                FLT4BLKE: u1 = 0x0,
                ///  FLT4BLKS
                FLT4BLKS: u1 = 0x0,
                ///  FLT4CNT
                FLT4CNT: u4 = 0x0,
                ///  FLT4CRES
                FLT4CRES: u1 = 0x0,
                ///  FLT4RSTM
                FLT4RSTM: u1 = 0x0,
            }),
            ///  HRTIM Fault Input Register 4
            FLTINR4: mmio.Mmio(packed struct(u32) { // reset_value: 0x0
                ///  FLT5BLKE
                FLT5BLKE: u1 = 0x0,
                ///  FLT5BLKS
                FLT5BLKS: u1 = 0x0,
                ///  FLT5CNT
                FLT5CNT: u4 = 0x0,
                ///  FLT5CRES
                FLT5CRES: u1 = 0x0,
                ///  FLT5RSTM
                FLT5RSTM: u1 = 0x0,
                ///  FLT6BLKE
                FLT6BLKE: u1 = 0x0,
                ///  FLT6BLKS
                FLT6BLKS: u1 = 0x0,
                ///  FLT6CNT
                FLT6CNT: u4 = 0x0,
                ///  FLT6CRES
                FLT6CRES: u1 = 0x0,
                ///  FLT6RSTM
                FLT6RSTM: u1 = 0x0,
                padding: u16 = 0x0,
            }),
        };
    };
};
