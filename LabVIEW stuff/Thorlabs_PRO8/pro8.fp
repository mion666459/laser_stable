s��        A�  � 2< �   �   ����                               Pro8                            Thorlabs PRO800/8000 VXIpnp Instr Driver                                                              � � ��ViInt16  �  � ��ViInt32  � � ��ViReal64     � ��ViRsrc     	� 	��ViBoolean     	� 	��ViSession     � ��ViStatus     �  ViChar[]     � ��ViChar     � ��ViString     	�  ViInt16[]     	�  ViInt32[]     
�  	ViReal64[]     � 	 
ViBoolean[]      This instrument module provides programming support for the Thorlabs PRO800/8000 instrument series. The module is divided into the following functions:

Functions/Classes:

(1) Initialize:
This function initializes the instrument and sets it to a default configuration.

(2) Configuration Functions: (Class)
This class of functions configures the instrument by setting system configuration parameters.

(3) Status Functions: (Class)
This class of functions allows the user to determine the current status of the instrument.

(4) Data Functions: (Class)
This class of functions transfers data from the instrument.

(5) Electrical Characterisation: (Class)
This class provides functions to perform electrical characterisations.

(6) Utility Functions: (Class)
This class of functions provides lower level functions to communicate with the instrument, and change instrument parameters.

(7) Close:
This function takes the instrument offline.

Note:

This instrument driver works correctly with firmware revision 4.41 or higher.     p    This class of functions configures the instrument by setting acquisition and system configuration parameters.
     1    This class of functions configures LDC modules.     1    This class of functions configures MLC modules.     1    This class of functions configures TEC modules.     1    This class of functions configures ITC modules.     1    This class of functions configures PDA modules.     1    This class of functions configures OSW modules.     0    This class of functions configures LS modules.     2    This class of functions configures SLED modules.     4    This class of functions configures WDM-CW modules.     4    This class of functions configures WDM-EA modules.     5    This class of functions configures WDM-DIR modules.     6    This class of functions configures WDM-CCDM modules.     6    This class of functions configures WDM-CWDM modules.     5    This class of functions configures WDM-ITC modules.     1    This class of functions configures BBS modules.     \    This class of functions allow the user to determine the current status of the instrument.
     D    This class of functions transfers data to or from the instrument.
     B    This class of functions transfers data to or from a LDC module.
     B    This class of functions transfers data to or from a MLC module.
     B    This class of functions transfers data to or from a TEC module.
     B    This class of functions transfers data to or from a ITC module.
     B    This class of functions transfers data to or from a PDA module.
     A    This class of functions transfers data to or from a LS module.
     C    This class of functions transfers data to or from a SLED module.
     E    This class of functions transfers data to or from a WDM-CW module.
     E    This class of functions transfers data to or from a WDM-EA module.
     F    This class of functions transfers data to or from a WDM-DIR module.
     G    This class of functions transfers data to or from a WDM-CCDM module.
     G    This class of functions transfers data to or from a WDM-CWDM module.
     F    This class of functions transfers data to or from a WDM-ITC module.
     B    This class of functions transfers data to or from a BBS module.
     I    This class provides functions to perform electrical characterisations.
     X    This class provides functions to perform electrical characterisations on LDC modules.
     X    This class provides functions to perform electrical characterisations on MLC modules.
     X    This class provides functions to perform electrical characterisations on TEC modules.
     X    This class provides functions to perform electrical characterisations on ITC modules.
     X    This class provides functions to perform electrical characterisations on PDA modules.
     W    This class provides functions to perform electrical characterisations on LS modules.
     Y    This class provides functions to perform electrical characterisations on SLED modules.
     [    This class provides functions to perform electrical characterisations on WDM-CW modules.
     [    This class provides functions to perform electrical characterisations on WDM-EA modules.
     \    This class provides functions to perform electrical characterisations on WDM-DIR modules.
     ]    This class provides functions to perform electrical characterisations on WDM-CCDM modules.
     ]    This class provides functions to perform electrical characterisations on WDM-CCDM modules.
     �    This class of functions provides utility and low level functions to communicate with the instrument and change instrument parameters.
    f    This function performs the following initialization actions:

- Opens a session to the Default Resource Manager resource and a session to the specified device using the interface and address specified in the Resource_Name control.

- Performs an identification query on the Instrument.

- Clears all errors in the instruments error queue.

- Resets the instrument to a known state.

- Sends initialization commands to the instrument that set any necessary programmatic variables such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.

- Returns an Instrument Handle which is used to differentiate between different sessions of this instrument driver.

- Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.    y    This control specifies the interface and address of the device that is to be initialized (Instrument Descriptor). The exact grammar to be used in this control is shown in the note below. 

Default Value:  "GPIB::10::INSTR"

Notes:

(1) Based on the Instrument Descriptor, this operation establishes a communication session with a device.  The grammar for the Instrument Descriptor is shown below.  Optional parameters are shown in square brackets ([]).

Interface   Grammar
------------------------------------------------------
GPIB        GPIB[board]::primary address[::secondary address]
            [::INSTR]
            
The GPIB keyword is used with GPIB instruments.

The default value for optional parameters are shown below.

Optional Parameter          Default Value
-----------------------------------------
board                       0
secondary address           none - 31
        This control specifies if an ID Query is sent to the instrument during the initialization procedure.

Valid Range:
VI_OFF (0) - Skip Query
VI_ON  (1) - Do Query (Default Value)

Note:
   
Under normal circumstances the ID Query ensures that the instrument initialized is the type supported by this driver. However circumstances may arise where it is undesirable to send an ID Query to the instrument.  In those cases; set this control to "Skip Query" and this function will initialize the selected interface, without doing an ID Query.
    ?    This control specifies if the instrument is to be reset to its power-on settings during the initialization procedure.

Valid Range:
VI_OFF (0) - Don't Reset
VI_ON  (1) - Reset Device (Default Value)

Note:

If you do not want the instrument reset. Set this control to "Don't Reset" while initializing the instrument.
    2    This control returns an Instrument Handle that is used in all subsequent function calls to differentiate between different sessions of this instrument driver.

Note:

Each time this function is invoked a Unique Session is opened.  It is possible to have more than one session open for the same resource.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
    � =   �     Resource Name                      :S �       ID Query                          2 :� �       Reset Device                      y �� �  }    Instrument Handle                 �����  �    Status                          ����! ��                                         ����
 ��                                            "GPIB::10::INSTR"  ! Do Query VI_ON Skip Query VI_OFF  & Reset Device VI_ON Don't Reset VI_OFF    	           	           $Copyright � 1999-2010 Thorlabs GmbH    .Thorlabs PRO800/8000 VXIpnp Instrument Driver    (    This function sets the active channel.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ;    This control specifies the slot number.

Default Value: 1    "�����  �    Status                            #&   �  �    Instrument Handle                 #� K ) �  `    Slot                               	               1    +    This function returns the active channel.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     '    This control returns the slot number.    $�����  �    Status                            %n   �  �    Instrument Handle                 & K� �  `    Slot                               	               	            u    This function sets the active port of the active slot.

Note: This function is only useful for MLC and PDA modules.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ;    This control specifies the port number.

Default Value: 1    't����  �    Status                            '�   �  �    Instrument Handle                 (� K ) �  `    Port                               	               1    e    This function returns the active port.

Note: This function is only useful for MLC and PDA modules.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     '    This control returns the port number.    )�����  �    Status                            *u   �  �    Instrument Handle                 + K� �  `    Port                               	               	            6    This function sets the operation mode of the module.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     }    This control specifies the operation mode of the module.

Valid Range:
0 - const. Current (Default Value)
1 - const. Power
    ,<����  �    Status                            ,�   �  �    Instrument Handle                 -Z D   � �    Mode                               	                           const. Current 0 const. Power 1    9    This function returns the operation mode of the module.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     8    This control returns the operation mode of the module.    .�����  �    Status                            /}   �  �    Instrument Handle                 0 E� �  `    Mode                               	               	            5    This function sets the polarity of the laser diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the polarity of the laser diode.

Valid Range:
VI_OFF (0) - Cathode grounded (Default Value)
VI_ON  (1) - Anode grounded 
    1T����  �    Status                            1�   �  �    Instrument Handle                 2r B ' �       Polarity                           	             $  Anode grounded 1 Cathode grounded 0    8    This function returns the polarity of the laser diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     7    This control returns the polarity of the laser diode.    4#����  �    Status                            4�   �  �    Instrument Handle                 5A E� �  `    Polarity                           	               	            6    This function sets the polarity of the photo diode.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the polarity of the photo diode.

Valid Range:
VI_OFF (0) - Cathode grounded (Default Value)
VI_ON  (1) - Anode grounded 
    6y����  �    Status                            6�   �  �    Instrument Handle                 7� B ' �       Polarity                           	             $  Anode grounded 1 Cathode grounded 0    8    This function returns the polarity of the photo diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     7    This control returns the polarity of the photo diode.    9H����  �    Status                            9�   �  �    Instrument Handle                 :f E� �  `    Polarity                           	               	            A    This function switches the photo diode Bias voltage on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the photo diode Bias voltage.

Valid Range:
VI_OFF (0) - Bias voltage off (Default Value)
VI_ON  (1) - Bias voltage on
    ;�����  �    Status                            <(   �  �    Instrument Handle                 <� B ' �       Bias                               	               ON 1 OFF 0    B    This function returns the state of the photo diode Bias voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     A    This control returns the state of the photo diode Bias voltage.    >s����  �    Status                            >�   �  �    Instrument Handle                 ?� E� �  `    Bias                               	               	            @    This function selects a TEC module for temperature protection.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     M    This control specifies the slot number of the TEC module.

Default Value: 1    @�����  �    Status                            A\   �  �    Instrument Handle                 A� K ) �  `    Slot                               	               1    <    This function returns the slot for temperature protection.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     |    This control returns the slot number of the TEC module.

Note:

If there is no temperature protection slot -1 is returned.    CH����  �    Status                            C�   �  �    Instrument Handle                 Df K� �  `    Slot                               	               	            ?    This function switches the temperature protection on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the temperature protection.

Valid Range:
VI_OFF (0) - Temperature protection off (Default Value)
VI_ON  (1) - Temperature protection on
    E�����  �    Status                            Fk   �  �    Instrument Handle                 G
 B ' �       Temp. Protection                   	               ON 1 OFF 0    @    This function returns the state of the temperature protection.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     @    This control returns the state of the temperature protection.
    H�����  �    Status                            IE   �  �    Instrument Handle                 I� E� �  `    Temperature Protection             	               	            ;    This function switches the laser diode output on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser diode output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
    K*����  �    Status                            K�   �  �    Instrument Handle                 LH B ' �       Output                             	               ON 1 OFF 0    =    This function returns the state of the laser diode output.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ;    This control returns the state of the laser diode output.    M�����  �    Status                            N\   �  �    Instrument Handle                 N� E� �  `    Output                             	               	            ^    This function sets the operation mode of the module.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     }    This control specifies the operation mode of the module.

Valid Range:
0 - const. Current (Default Value)
1 - const. Power
    P_����  �    Status                            P�   �  �    Instrument Handle                 Q} D   � �    Mode                               	                           const. Current 0 const. Power 1    a    This function returns the operation mode of the module.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     8    This control returns the operation mode of the module.    SI����  �    Status                            S�   �  �    Instrument Handle                 Tg E� �  `    Mode                               	               	            b    This function sets the range of the laser diode current.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the range of the laser diode current.

Valid Range:
VI_OFF (0) - Low range (Default Value)
VI_ON  (1) - High range 
    U�����  �    Status                            VK   �  �    Instrument Handle                 V� B ' �       Range                              	               High 1 Low 0    e    This function returns the range of the laser diode current.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     <    This control returns the range of the laser diode current.    X�����  �    Status                            Y*   �  �    Instrument Handle                 Y� E� �  `    Range                              	               	            h    This function selects a TEC module for temperature protection.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     M    This control specifies the slot number of the TEC module.

Default Value: 1    [8����  �    Status                            [�   �  �    Instrument Handle                 \V K ) �  `    Slot                               	               1    d    This function returns the slot for temperature protection.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     |    This control returns the slot number of the TEC module.

Note:

If there is no temperature protection slot -1 is returned.    ]�����  �    Status                            ^J   �  �    Instrument Handle                 ^� K� �  `    Slot                               	               	            f    This function switches the temperature protection on or off.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the temperature protection.

Valid Range:
VI_OFF (0) - Temperature protection off (Default Value)
VI_ON  (1) - Temperature protection on
    `�����  �    Status                            a   �  �    Instrument Handle                 a� B ' �       Temp. Protection                   	               ON 1 OFF 0    h    This function returns the state of the temperature protection.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     @    This control returns the state of the temperature protection.
    c�����  �    Status                            d   �  �    Instrument Handle                 d� E� �  `    Temperature Protection             	               	            b    This function switches the laser diode output on or off.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser diode output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
    f#����  �    Status                            f�   �  �    Instrument Handle                 gA B ' �       Output                             	               ON 1 OFF 0    d    This function returns the state of the laser diode output.

Note: This function affects all ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ;    This control returns the state of the laser diode output.    h�����  �    Status                            i|   �  �    Instrument Handle                 j E� �  `    Output                             	               	            ,    This function sets the temperature sensor.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None        This control specifies the type of the temperature sensor.

Valid Range:

0 - AD590 (default value)
1 - Thermistor (low range)
2 - Thermistor (high range)
3 - PT100
4 - PT1000 (low range)
5 - PT1000 (high range)

Note:

On standard TEC modules AD590, Thermistor (low range) and Thermistor (high range are available.
On TEC modules with PT100 option PT100, Thermistor (low range) and Thermistor (high range) are available.
On TEC modules with KRYO option PT1000 (low range) and PT1000 (high range) are available.
    kM����  �    Status                            k�   �  �    Instrument Handle                 lk D   � �    Sensor                             	                          nAD590 0 Thermistor (low range) 1 Thermistor (high range) 2 PT100 3 PT1000 (low range) 4 PT1000 (high range) 5    /    This function returns the temperature sensor.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     :    This control returns the type of the temperature sensor.    o�����  �    Status                            pW   �  �    Instrument Handle                 p� E� �  `    Sensor                             	               	            0    This function switches the I-Share on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the I-Share.

Valid Range:
VI_OFF (0) - I-Share Off (Default Value)
VI_ON  (1) - I-Share On
    r+����  �    Status                            r�   �  �    Instrument Handle                 sI B ' �       I-Share                            	               ON 1 OFF 0    2    This function returns the state of the I-Share.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     0    This control returns the state of the I-Share.    t�����  �    Status                            uI   �  �    Instrument Handle                 u� E� �  `    I-Share                            	               	            7    This function switches the peltier output on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the peltier output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
    w����  �    Status                            w�   �  �    Instrument Handle                 x8 B ' �       Output                             	               ON 1 OFF 0    9    This function returns the state of the peltier output.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     7    This control returns the state of the peltier output.    y�����  �    Status                            zD   �  �    Instrument Handle                 z� E� �  `    Output                             	               	            6    This function sets the operation mode of the module.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     }    This control specifies the operation mode of the module.

Valid Range:
0 - const. Current (Default Value)
1 - const. Power
    |����  �    Status                            |�   �  �    Instrument Handle                 }9 D   � �    Mode                               	                           const. Current 0 const. Power 1    9    This function returns the operation mode of the module.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     8    This control returns the operation mode of the module.    ~�����  �    Status                            \   �  �    Instrument Handle                 � E� �  `    Mode                               	               	            5    This function sets the polarity of the laser diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the polarity of the laser diode.

Valid Range:
VI_OFF (0) - Cathode grounded (Default Value)
VI_ON  (1) - Anode grounded 
    �3����  �    Status                            ��   �  �    Instrument Handle                 �Q B ' �       Polarity                           	             $  Anode grounded 1 Cathode grounded 0    8    This function returns the polarity of the laser diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     7    This control returns the polarity of the laser diode.    �����  �    Status                            ��   �  �    Instrument Handle                 �  E� �  `    Polarity                           	               	            6    This function sets the polarity of the photo diode.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the polarity of the photo diode.

Valid Range:
VI_OFF (0) - Cathode grounded (Default Value)
VI_ON  (1) - Anode grounded 
    �X����  �    Status                            ��   �  �    Instrument Handle                 �v B ' �       Polarity                           	             $  Anode grounded 1 Cathode grounded 0    8    This function returns the polarity of the photo diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     7    This control returns the polarity of the photo diode.    �'����  �    Status                            ��   �  �    Instrument Handle                 �E E� �  `    Polarity                           	               	            ?    This function switches the temperature protection on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the temperature protection.

Valid Range:
VI_OFF (0) - Temperature protection off (Default Value)
VI_ON  (1) - Temperature protection on
    ������  �    Status                            �   �  �    Instrument Handle                 �� B ' �       Temp. Protection                   	               ON 1 OFF 0    @    This function returns the state of the temperature protection.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     @    This control returns the state of the temperature protection.
    �`����  �    Status                            ��   �  �    Instrument Handle                 �~ E� �  `    Temperature Protection             	               	            ;    This function switches the laser diode output on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser diode output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
    ������  �    Status                            �C   �  �    Instrument Handle                 �� B ' �       Output                             	               ON 1 OFF 0    =    This function returns the state of the laser diode output.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ;    This control returns the state of the laser diode output.    �w����  �    Status                            ��   �  �    Instrument Handle                 �� E� �  `    Output                             	               	            ,    This function sets the temperature sensor.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     t    This control specifies the type of the temperature sensor.

Valid Range:
0 - AD590 (Default Value)
1 - Thermistor
    ������  �    Status                            �F   �  �    Instrument Handle                 �� D   � �    Sensor                             	                          AD590 0 Thermistor 1    /    This function returns the temperature sensor.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     :    This control returns the type of the temperature sensor.    �k����  �    Status                            ��   �  �    Instrument Handle                 �� E� �  `    Sensor                             	               	            0    This function switches the I-Share on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the I-Share.

Valid Range:
VI_OFF (0) - I-Share Off (Default Value)
VI_ON  (1) - I-Share On
    ������  �    Status                            �=   �  �    Instrument Handle                 �� B ' �       I-Share                            	               ON 1 OFF 0    2    This function returns the state of the I-Share.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     0    This control returns the state of the I-Share.    �]����  �    Status                            ��   �  �    Instrument Handle                 �{ E� �  `    I-Share                            	               	            7    This function switches the peltier output on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the peltier output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
    ������  �    Status                            �,   �  �    Instrument Handle                 �� B ' �       Output                             	               ON 1 OFF 0    9    This function returns the state of the peltier output.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     7    This control returns the state of the peltier output.    �X����  �    Status                            ��   �  �    Instrument Handle                 �v E� �  `    Output                             	               	            f    This function sets the polarity of the photo diode.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the polarity of the photo diode.

Valid Range:
VI_OFF (0) - Cathode grounded (Default Value)
VI_ON  (1) - Anode grounded 
    ������  �    Status                            �]   �  �    Instrument Handle                 �� B ' �       Polarity                           	             $  Anode grounded 1 Cathode grounded 0    i    This function returns the polarity of the photo diode.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     7    This control returns the polarity of the photo diode.    ������  �    Status                            �]   �  �    Instrument Handle                 �� E� �  `    Polarity                           	               	            q    This function switches the photo diode Bias voltage on or off.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the photo diode Bias voltage.

Valid Range:
VI_OFF (0) - Bias voltage off (Default Value)
VI_ON  (1) - Bias voltage on
    �o����  �    Status                            ��   �  �    Instrument Handle                 �� B ' �       Bias                               	               ON 1 OFF 0    s    This function returns the state of the photo diode Bias voltage.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     A    This control returns the state of the photo diode Bias voltage.    �j����  �    Status                            ��   �  �    Instrument Handle                 �� E� �  `    Bias                               	               	            ^    This function sets the range of the module.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     H    This control specifies the range.

Valid Range: 1..7

Default Value: 1    ������  �    Status                            �q   �  �    Instrument Handle                 � ; W �       Range                              	                          1 1 2 2 3 3 4 4 5 5 6 6 7 7    a    This function returns the range of the module.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     !    This control returns the range.    ������  �    Status                            �"   �  �    Instrument Handle                 �� K� �  `    Range                              	               	            &    This function sets the switch state.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     K    This control specifies the state of the optical switch.

Default Value: 1    ������  �    Status                            �R   �  �    Instrument Handle                 �� K ) �  `    State                              	               1    ?    This function returns the active state of the optical switch.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     7    This control returns the state of the optical switch.    �?����  �    Status                            ��   �  �    Instrument Handle                 �] K� �  `    State                              	               	            4    This function switches the laser output on or off.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
    ������  �    Status                            �   �  �    Instrument Handle                 �� B ' �       Output                             	               ON 1 OFF 0    6    This function returns the state of the laser output.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the state of the laser output.    �9����  �    Status                            ��   �  �    Instrument Handle                 �W E� �  `    Output                             	               	            �    This function switches the synchronous modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the synchronous modulation.

Valid Range:
VI_OFF (0) - synchronous modulation off (Default Value)
VI_ON  (1) - synchronous modulation on
    �S����  �    Status                            ��   �  �    Instrument Handle                 �q B E �       Synchronous Modulation          ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the state of the synchronous modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the state of the synchronous modulation.    �~����  �    Status                            ��   �  �    Instrument Handle                 Ĝ E� �  `    Synchronous Modulation          ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.    4    This function switches the laser output on or off.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
    �m����  �    Status                            ��   �  �    Instrument Handle                 ǋ B ' �       Output                             	               ON 1 OFF 0    6    This function returns the state of the laser output.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the state of the laser output.    �����  �    Status                            ɒ   �  �    Instrument Handle                 �1 E� �  `    Output                             	               	            �    This function switches the synchronous modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the synchronous modulation.

Valid Range:
VI_OFF (0) - synchronous modulation off (Default Value)
VI_ON  (1) - synchronous modulation on
    �-����  �    Status                            ̬   �  �    Instrument Handle                 �K B E �       Synchronous Modulation          ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the state of the synchronous modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the state of the synchronous modulation.    �X����  �    Status                            ��   �  �    Instrument Handle                 �v E� �  `    Synchronous Modulation          ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.    4    This function switches the laser output on or off.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
    �G����  �    Status                            ��   �  �    Instrument Handle                 �e B ' �       Output                             	               ON 1 OFF 0    6    This function returns the state of the laser output.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the state of the laser output.    ������  �    Status                            �l   �  �    Instrument Handle                 � E� �  `    Output                             	               	            �    This function switches the synchronous modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the synchronous modulation.

Valid Range:
VI_OFF (0) - synchronous modulation off (Default Value)
VI_ON  (1) - synchronous modulation on
    �����  �    Status                            ن   �  �    Instrument Handle                 �% B E �       Synchronous Modulation          ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the state of the synchronous modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the state of the synchronous modulation.    �2����  �    Status                            ݱ   �  �    Instrument Handle                 �P E� �  `    Synchronous Modulation          ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.       This function switches the internal low frequency modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the low frequency modulation.

Valid Range:
VI_OFF (0) - low frequency modulation off (Default Value)
VI_ON  (1) - low frequency modulation on
    ������  �    Status                            �s   �  �    Instrument Handle                 � B E �       LF Modulation                   ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.   	    This function returns the state of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     A    This control returns the state of the low frequency modulation.    �0����  �    Status                            �   �  �    Instrument Handle                 �N E� �  `    LF Modulation                   ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.       This function selects the waveform of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    d    This control selects the waveform of the internal low frequency modulation.

Valid Range:

0 - Noise (Default Value)
1 - Pulse
2 - Sine
3 - Square
4 - Triangle

Note: 
Triangle only works on modules where bit 3 and bit 4 in option byte 2 is set. Where (OptionByte2 & 0x18 == 0x18) is true. See functions <Slot Data Query> and <Slot Data Query Extended>.
    ������  �    Status                            �x   �  �    Instrument Handle               ���� � ��                                           � = X �       LF Modulation Type                 	               [Note: This function only works with a 'B' type module. See function help for more details.               +Noise 0 Pulse 1 Sine 2 Square 3 Triangle 4       This function returns the waveform of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control returns the waveform of the low frequency modulation.

Valid values are: 
0 - Noise 
1 - Pulse 
2 - Sine 
3 - Square
4 - Triangle

    �����  �    Status                            �   �  �    Instrument Handle                 �1 E� �  `    LF Modulation Type              ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.   m    This function switches the coherence control on or off.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'EA Set LF Modulation', 
'EA Set LF Modulation Type' and 'EA Set LF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the coherence control.

Valid Range:
VI_OFF (0) - Coherence Control Off (Default Value)
VI_ON  (1) - Coherence Control On
    �����  �    Status                            �   �  �    Instrument Handle                 � B ' �       Coherence Control               ���� � ��                                            	               ON 1 OFF 0    bNote: This function is not recommended for a 'B' type module. See function help for more details.   o    This function returns the state of the coherence control.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'EA Get LF Modulation', 
'EA Get LF Modulation Type' and 'EA Get LF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     :    This control returns the state of the coherence control.    �"����  �    Status                            ��   �  �    Instrument Handle                 �@ E� �  `    Coherence Control               ���� � ��                                            	               	            bNote: This function is not recommended for a 'B' type module. See function help for more details.    4    This function switches the laser output on or off.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
    �����  �    Status                            ��   �  �    Instrument Handle                 �1 B ' �       Output                             	               ON 1 OFF 0    6    This function returns the state of the laser output.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the state of the laser output.    ������  �    Status                            �8   �  �    Instrument Handle                 �� E� �  `    Output                             	               	            �    This function switches the synchronous modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the synchronous modulation.

Valid Range:
VI_OFF (0) - synchronous modulation off (Default Value)
VI_ON  (1) - synchronous modulation on
    ������  �    Status                            R   �  �    Instrument Handle                 � B E �       Synchronous Modulation          ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the state of the synchronous modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the state of the synchronous modulation.   �����  �    Status                           }   �  �    Instrument Handle                 E� �  `    Synchronous Modulation          ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.       This function switches the internal low frequency modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the low frequency modulation.

Valid Range:
VI_OFF (0) - low frequency modulation off (Default Value)
VI_ON  (1) - low frequency modulation on
   �����  �    Status                           ?   �  �    Instrument Handle                � B E �       LF Modulation                   ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.   	    This function returns the state of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     A    This control returns the state of the low frequency modulation.   �����  �    Status                           {   �  �    Instrument Handle                 E� �  `    LF Modulation                   ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.       This function selects the waveform of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    d    This control selects the waveform of the internal low frequency modulation.

Valid Range:

0 - Noise (Default Value)
1 - Pulse
2 - Sine
3 - Square
4 - Triangle

Note: 
Triangle only works on modules where bit 3 and bit 4 in option byte 2 is set. Where (OptionByte2 & 0x18 == 0x18) is true. See functions <Slot Data Query> and <Slot Data Query Extended>.
   �����  �    Status                           D   �  �    Instrument Handle               ���� � ��                                          � = X �       LF Modulation Type                 	               [Note: This function only works with a 'B' type module. See function help for more details.               +Noise 0 Pulse 1 Sine 2 Square 3 Triangle 4       This function returns the waveform of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control returns the waveform of the low frequency modulation.

Valid values are: 
0 - Noise 
1 - Pulse 
2 - Sine 
3 - Square
4 - Triangle
   �����  �    Status                           ^   �  �    Instrument Handle                � E� �  `    LF Modulation Type              ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.    �    This function switches the high frequency modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the high frequency modulation.

Valid Range:
VI_OFF (0) - high frequency modulation off (Default Value)
VI_ON  (1) - high frequency modulation on
   �����  �    Status                           j   �  �    Instrument Handle                	 B E �       HF Modulation                   ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.       This function returns the state of the high frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     B    This control returns the state of the high frequency modulation.   "����  �    Status                           �   �  �    Instrument Handle                @ E� �  `    HF Modulation                   ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.   p    This function switches the coherence control on or off.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'DIR Set LF Modulation', 
'DIR Set LF Modulation Type' and 'DIR Set LF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the coherence control.

Valid Range:
VI_OFF (0) - Coherence Control Off (Default Value)
VI_ON  (1) - Coherence Control On
   !P����  �    Status                           !�   �  �    Instrument Handle                "n B ' �       Coherence Control               ���� � ��                                            	               ON 1 OFF 0    bNote: This function is not recommended for a 'B' type module. See function help for more details.   r    This function returns the state of the coherence control.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'DIR Get LF Modulation', 
'DIR Get LF Modulation Type' and 'DIR Get LF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     :    This control returns the state of the coherence control.   %�����  �    Status                           &f   �  �    Instrument Handle                ' E� �  `    Coherence Control               ���� � ��                                            	               	            bNote: This function is not recommended for a 'B' type module. See function help for more details.   /    This function switches the modulation on or off.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'DIR Set HF Modulation'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the modulation.

Valid Range:
VI_OFF (0) - Modulation Off (Default Value)
VI_ON  (1) - Modulation On
   )�����  �    Status                           *R   �  �    Instrument Handle                *� B ' �       Modulation                      ���� � ��                                            	               ON 1 OFF 0    bNote: This function is not recommended for a 'B' type module. See function help for more details.   1    This function returns the state of the modulation.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'DIR Get HF Modulation'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     3    This control returns the state of the modulation.   .����  �    Status                           .�   �  �    Instrument Handle                /2 E� �  `    Modulation                      ���� � ��                                            	               	            bNote: This function is not recommended for a 'B' type module. See function help for more details.    4    This function switches the laser output on or off.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
   0�����  �    Status                           1}   �  �    Instrument Handle                2 B ' �       Output                             	               ON 1 OFF 0    6    This function returns the state of the laser output.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the state of the laser output.   3�����  �    Status                           4#   �  �    Instrument Handle                4� E� �  `    Output                             	               	            �    This function switches the synchronous modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the synchronous modulation.

Valid Range:
VI_OFF (0) - synchronous modulation off (Default Value)
VI_ON  (1) - synchronous modulation on
   6�����  �    Status                           7=   �  �    Instrument Handle                7� B E �       Synchronous Modulation          ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the state of the synchronous modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the state of the synchronous modulation.   :�����  �    Status                           ;h   �  �    Instrument Handle                < E� �  `    Synchronous Modulation          ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.    �    This function switches the high frequency modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the high frequency modulation.

Valid Range:
VI_OFF (0) - high frequency modulation off (Default Value)
VI_ON  (1) - high frequency modulation on
   >�����  �    Status                           ?"   �  �    Instrument Handle                ?� B E �       HF Modulation                   ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.       This function returns the state of the high frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     B    This control returns the state of the high frequency modulation.   B�����  �    Status                           CY   �  �    Instrument Handle                C� E� �  `    HF Modulation                   ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.       This function switches the internal low frequency modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the low frequency modulation.

Valid Range:
VI_OFF (0) - low frequency modulation off (Default Value)
VI_ON  (1) - low frequency modulation on
   F�����  �    Status                           G   �  �    Instrument Handle                G� B E �       LF Modulation                   ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.   	    This function returns the state of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     A    This control returns the state of the low frequency modulation.   J�����  �    Status                           KZ   �  �    Instrument Handle                K� E� �  `    LF Modulation                   ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.       This function selects the waveform of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    d    This control selects the waveform of the internal low frequency modulation.

Valid Range:

0 - Noise (Default Value)
1 - Pulse
2 - Sine
3 - Square
4 - Triangle

Note: 
Triangle only works on modules where bit 3 and bit 4 in option byte 2 is set. Where (OptionByte2 & 0x18 == 0x18) is true. See functions <Slot Data Query> and <Slot Data Query Extended>.
   N�����  �    Status                           O#   �  �    Instrument Handle               ���� � ��                                          O� = X �       LF Modulation Type                 	               [Note: This function only works with a 'B' type module. See function help for more details.               +Noise 0 Pulse 1 Sine 2 Square 3 Triangle 4       This function returns the waveform of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control returns the waveform of the low frequency modulation.

Valid values are: 
0 - Noise 
1 - Pulse 
2 - Sine 
3 - Square
4 - Triangle
   S�����  �    Status                           T=   �  �    Instrument Handle                T� E� �  `    LF Modulation Type              ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.    4    This function switches the laser output on or off.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
   V�����  �    Status                           W~   �  �    Instrument Handle                X B ' �       Output                             	               ON 1 OFF 0    6    This function returns the state of the laser output.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the state of the laser output.   Y�����  �    Status                           Z$   �  �    Instrument Handle                Z� E� �  `    Output                             	               	            �    This function switches the synchronous modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the synchronous modulation.

Valid Range:
VI_OFF (0) - synchronous modulation off (Default Value)
VI_ON  (1) - synchronous modulation on
   \�����  �    Status                           ]>   �  �    Instrument Handle                ]� B E �       Synchronous Modulation          ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the state of the synchronous modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the state of the synchronous modulation.   `�����  �    Status                           ai   �  �    Instrument Handle                b E� �  `    Synchronous Modulation          ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.       This function switches the internal low frequency modulation on or off.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the low frequency modulation.

Valid Range:
VI_OFF (0) - low frequency modulation off (Default Value)
VI_ON  (1) - low frequency modulation on
   d�����  �    Status                           e+   �  �    Instrument Handle                e� B E �       LF Modulation                   ���� � ��                                            	               ON 1 OFF 0    [Note: This function only works with a 'B' type module. See function help for more details.   	    This function returns the state of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     A    This control returns the state of the low frequency modulation.   h�����  �    Status                           ig   �  �    Instrument Handle                j E� �  `    LF Modulation                   ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.       This function selects the waveform of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    d    This control selects the waveform of the internal low frequency modulation.

Valid Range:

0 - Noise (Default Value)
1 - Pulse
2 - Sine
3 - Square
4 - Triangle

Note: 
Triangle only works on modules where bit 3 and bit 4 in option byte 2 is set. Where (OptionByte2 & 0x18 == 0x18) is true. See functions <Slot Data Query> and <Slot Data Query Extended>.
   l�����  �    Status                           m0   �  �    Instrument Handle               ���� � ��                                          m� = X �       LF Modulation Type                 	               [Note: This function only works with a 'B' type module. See function help for more details.               +Noise 0 Pulse 1 Sine 2 Square 3 Triangle 4       This function returns the waveform of the internal low frequency modulation.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control returns the waveform of the low frequency modulation.

Valid values are: 
0 - Noise 
1 - Pulse
2 - Sine
3 - Square
4 - Triangle
   q�����  �    Status                           rJ   �  �    Instrument Handle                r� E� �  `    LF Modulation Type              ���� � ��                                            	               	            [Note: This function only works with a 'B' type module. See function help for more details.    4    This function switches the laser output on or off.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
   u
����  �    Status                           u�   �  �    Instrument Handle                v( B ' �       Output                             	               ON 1 OFF 0    6    This function returns the state of the laser output.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the state of the laser output.   w�����  �    Status                           x/   �  �    Instrument Handle                x� E� �  `    Output                             	               	            @    This function switches the synchronous modulation on or off.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the synchronous modulation.

Valid Range:
VI_OFF (0) - synchronous modulation off (Default Value)
VI_ON  (1) - synchronous modulation on
   z����  �    Status                           z�   �  �    Instrument Handle                {, B E �       Synchronous Modulation             	               ON 1 OFF 0    B    This function returns the state of the synchronous modulation.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the state of the synchronous modulation.   |�����  �    Status                           }i   �  �    Instrument Handle                ~ E� �  `    Synchronous Modulation             	               	            K    This function switches the internal low frequency modulation on or off.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the low frequency modulation.

Valid Range:
VI_OFF (0) - low frequency modulation off (Default Value)
VI_ON  (1) - low frequency modulation on
   ]����  �    Status                           �   �  �    Instrument Handle                �{ B E �       LF Modulation                      	               ON 1 OFF 0    M    This function returns the state of the internal low frequency modulation.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     A    This control returns the state of the low frequency modulation.   �J����  �    Status                           ��   �  �    Instrument Handle                �h E� �  `    LF Modulation                      	               	            P    This function selects the waveform of the internal low frequency modulation.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    d    This control selects the waveform of the internal low frequency modulation.

Valid Range:

0 - Noise (Default Value)
1 - Pulse
2 - Sine
3 - Square
4 - Triangle

Note: 
Triangle only works on modules where bit 3 and bit 4 in option byte 2 is set. Where (OptionByte2 & 0x18 == 0x18) is true. See functions <Slot Data Query> and <Slot Data Query Extended>.
   ������  �    Status                           �C   �  �    Instrument Handle                �� = X �       LF Modulation Type                 	                          +Noise 0 Pulse 1 Sine 2 Square 3 Triangle 4    P    This function returns the waveform of the internal low frequency modulation.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control returns the waveform of the low frequency modulation.

Valid values are: 
0 - Noise 
1 - Pulse 
2 - Sine 
3 - Square 
4 - Triangle
   ������  �    Status                           �   �  �    Instrument Handle                �� E� �  `    LF Modulation Type                 	               	            4    This function switches the laser output on or off.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the laser output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
   �>����  �    Status                           ��   �  �    Instrument Handle                �\ B ' �       Output                             	               ON 1 OFF 0    6    This function returns the state of the laser output.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the state of the laser output.   ������  �    Status                           �c   �  �    Instrument Handle                � E� �  `    Output                             	               	            @    This function switches the synchronous modulation on or off.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the synchronous modulation.

Valid Range:
VI_OFF (0) - synchronous modulation off (Default Value)
VI_ON  (1) - synchronous modulation on
   �B����  �    Status                           ��   �  �    Instrument Handle                �` B E �       Synchronous Modulation             	               ON 1 OFF 0    B    This function returns the state of the synchronous modulation.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the state of the synchronous modulation.   �����  �    Status                           ��   �  �    Instrument Handle                �< E� �  `    Synchronous Modulation             	               	            J    This function switches the internal low frequency modulation on or off.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the low frequency modulation.

Valid Range:
VI_OFF (0) - low frequency modulation off (Default Value)
VI_ON  (1) - low frequency modulation on
   ������  �    Status                           �   �  �    Instrument Handle                �� B E �       LF Modulation                      	               ON 1 OFF 0    M    This function returns the state of the internal low frequency modulation.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     A    This control returns the state of the low frequency modulation.   �}����  �    Status                           ��   �  �    Instrument Handle                �� E� �  `    LF Modulation                      	               	            P    This function selects the waveform of the internal low frequency modulation.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None    d    This control selects the waveform of the internal low frequency modulation.

Valid Range:

0 - Noise (Default Value)
1 - Pulse
2 - Sine
3 - Square
4 - Triangle

Note: 
Triangle only works on modules where bit 3 and bit 4 in option byte 2 is set. Where (OptionByte2 & 0x18 == 0x18) is true. See functions <Slot Data Query> and <Slot Data Query Extended>.
   ������  �    Status                           �v   �  �    Instrument Handle                � = X �       LF Modulation Type                 	                          +Noise 0 Pulse 1 Sine 2 Square 3 Triangle 4    P    This function returns the waveform of the internal low frequency modulation.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control returns the waveform of the low frequency modulation.

Valid values are: 
0 - Noise 
1 - Pulse 
2 - Sine 
3 - Square 
4 - Triangle
   ������  �    Status                           �A   �  �    Instrument Handle                �� E� �  `    LF Modulation Type                 	               	            .    This function switches the output on or off.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None         This control specifies the state of the output.

Valid Range:
VI_OFF (0) - Output Off (Default Value)
VI_ON  (1) - Output On
   �k����  �    Status                           ��   �  �    Instrument Handle                �� B ' �       Output                             	               ON 1 OFF 0    0    This function returns the state of the output.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     /    This control returns the state of the output.   �����  �    Status                           ��   �  �    Instrument Handle                �# E� �  `    Output                             	               	            @    This function switches the synchronous modulation on or off.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies the state of the synchronous modulation.

Valid Range:
VI_OFF (0) - synchronous modulation off (Default Value)
VI_ON  (1) - synchronous modulation on
   �]����  �    Status                           ��   �  �    Instrument Handle                �{ B E �       Synchronous Modulation             	               ON 1 OFF 0    B    This function returns the state of the synchronous modulation.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ?    This control returns the state of the synchronous modulation.   �9����  �    Status                           ��   �  �    Instrument Handle                �W E� �  `    Synchronous Modulation             	               	            :    This function returns the Device Error Summary Register.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     M    This control returns the Device Error Summary Register in decimal notation.   ������  �    Status                           �   �  �    Instrument Handle                �� K� �  `    Device Error Summary Register      	               	            >    This function sets the Device Error Summary Enable Register.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the Device Error Summary Enable Register.

Default Value: 0   �����  �    Status                           ��   �  �    Instrument Handle                �- K ) �  `    Dev Error Summary Enable Reg       	               0    A    This function returns the Device Error Summary Enable Register.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control returns the Device Error Summary Enable Register in decimal notation.   ������  �    Status                           �   �  �    Instrument Handle                �� K� �  `    Dev Error Summary Enable Reg       	               	            R    This function returns the Device Error Condition Register of the specified slot.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     e    This control returns the Device Error Condition Register of the specified slot in decimal notation.     ;    This control specifies the slot number.

Default Value: 1   �����  �    Status                           ��   �  �    Instrument Handle                �3 K� �  `    Device Error Condition Register  �� K # �  `    Slot                               	               	            1    N    This function returns the Device Error Event Register of the specified slot.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     a    This control returns the Device Error Event Register of the specified slot in decimal notation.     ;    This control specifies the slot number.

Default Value: 1   �.����  �    Status                           ��   �  �    Instrument Handle                �L K� �  `    Device Error Event Register      �� K " �  `    Slot                               	               	            1    R    This function sets the Device Error Event Enable Register of the specified slot.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     h    This control specifies the Device Error Event Enable Register of the specified slot.

Default Value: 0     ;    This control specifies the slot number.

Default Value: 1   �G����  �    Status                           ��   �  �    Instrument Handle                �e K� �  `    Dev Error Event Enable Register  �� K " �  `    Slot                               	               0    1    U    This function returns the Device Error Event Enable Register of the specified slot.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     h    This control returns the Device Error Event Enable Register of the specified slot in decimal notation.     ;    This control specifies the slot number.

Default Value: 1   �c����  �    Status                           ��   �  �    Instrument Handle                �� K� �  `    Dev Error Event Enable Register  �� K " �  `    Slot                               	               	            1    >    This function returns the Block Function Condition Register.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     Q    This control returns the Block Function Condition Register in decimal notation.   �o����  �    Status                           ��   �  �    Instrument Handle                �� K� �  `    Block Function Cond Register       	               	            :    This function returns the Block Function Event Register.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     M    This control returns the Block Function Event Register in decimal notation.   ������  �    Status                           �b   �  �    Instrument Handle                � K� �  `    Block Function Event Register      	               	            8    This function sets the Block Function Enable Register.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     N    This control specifies the Block Function Enable Register.

Default Value: 0   �Q����  �    Status                           ��   �  �    Instrument Handle                �o K ) �  `    Block Function Enable Register     	               0    ;    This function returns the Block Function Enable Register.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     N    This control returns the Block Function Enable Register in decimal notation.   Ƽ����  �    Status                           �;   �  �    Instrument Handle                �� K� �  `    Block Function Enable Register     	               	            ?    This function sets the calibration factor of the photo diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     a    This control specifies the calibration factor of the photo diode [A/W].

Default Value: 1.0 A/W   �2����  �    Status                           ɱ   �  �    Instrument Handle                �P K ) �  `    Calibration Factor                 	               1.0    B    This function returns the calibration factor of the photo diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     G    This control returns the calibration factor of the photo diode [A/W].   ˹����  �    Status                           �8   �  �    Instrument Handle                �� K ( � �    Value                            �X K� �  `    Calibration factor                 	                         ,minimum Value 0 maximum Value 1 set Value 2    	           -    This function sets the laser diode current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     K    This control specifies the laser diode current [A].

Default Value: 0.0 A   �����  �    Status                           φ   �  �    Instrument Handle                �% K ) �  `    Current                            	               0.0    0    This function returns the laser diode current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the laser diode current [A].   �f����  �    Status                           ��   �  �    Instrument Handle                ҄ K ( � �    Value                            � K� �  `    Current                            	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           -    This function sets the photo diode current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     K    This control specifies the photo diode current [A].

Default Value: 0.0 A   ������  �    Status                           �?   �  �    Instrument Handle                �� K ) �  `    Current                            	               0.0    2    This function returns the photo diode current. 
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the photo diode current [A].   �!����  �    Status                           נ   �  �    Instrument Handle                �? K ( � �    Value                            �� K� �  `    Current                            	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           )    This function sets the optical power.
.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     E    This control specifies the optical power [W].

Default Value: 0.0 W   �w����  �    Status                           ��   �  �    Instrument Handle                ە K ) �  `    Optical Power                      	               0.0    *    This function returns the optical power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     -    This control returns the optical power [W].   ������  �    Status                           �I   �  �    Instrument Handle                �� K ( � �    Value                            �z K� �  `    Optical Power                      	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           :    This function sets the limit current of the laser diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     X    This control specifies the limit current of the laser diode [A].

Default Value: 0.0 A   �+����  �    Status                           �   �  �    Instrument Handle                �I K ) �  `    Limit Current                      	               0.0    6    This function returns the laser diode limit current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     @    This control returns the limit current of the laser diode [A].   �����  �    Status                           �   �  �    Instrument Handle                � K ( � �    Value                            �< K� �  `    Limit Current                      	                         ,minimum Value 0 maximum Value 1 set Value 2    	           :    This function sets the limit current of the photo diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     X    This control specifies the limit current of the photo diode [A].

Default Value: 0.0 A   ������  �    Status                           �p   �  �    Instrument Handle                � K ) �  `    Limit Current                      	               0.0    6    This function returns the photo diode limit current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     @    This control returns the limit current of the photo diode [A].   �c����  �    Status                           ��   �  �    Instrument Handle                � K ( � �    Value                            � K� �  `    Limit Current                      	                         ,minimum Value 0 maximum Value 1 set Value 2    	           8    This function sets the limit power of the laser diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     V    This control specifies the limit power of the laser diode [W].

Default Value: 0.0 W   �����  �    Status                           �4   �  �    Instrument Handle                �� K ) �  `    Limit Power                        	               0.0    0    This function returns the optical power limit.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     >    This control returns the limit power of the laser diode [W].   �����  �    Status                           �   �  �    Instrument Handle                �= K ( � �    Value                            � K� �  `    Limit Power                        	                         ,minimum Value 0 maximum Value 1 set Value 2    	           R    This function returns the laser diode limit current adjusted via the front poti.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     B    This control returns the laser diode hardware limit current [A].   �����  �    Status                           �   �  �    Instrument Handle                � K� �  `    Limit Current                      	               	           0    This function returns the laser diode voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     3    This control returns the laser diode voltage [V].   ������  �    Status                           �c   �  �    Instrument Handle                � K� �  `    Voltage                            	               	           ^    This function sets the laser diode current.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     K    This control specifies the laser diode current [A].

Default Value: 0.0 A   �^����  �    Status                           ��   �  �    Instrument Handle                �| K ) �  `    Current                            	               0.0    a    This function returns the laser diode current.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the laser diode current [A].   ������  �    Status                           �m   �  �    Instrument Handle                � K ( � �    Value                            �� K� �  `    Current                            	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           ^    This function sets the photo diode current.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     K    This control specifies the photo diode current [A].

Default Value: 0.0 A   �y����  �    Status                           ��   �  �    Instrument Handle                �� K ) �  `    Current                            	               0.0    b    This function returns the photo diode current. 

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the photo diode current [A].   �
����  �    Status                           ��   �  �    Instrument Handle                 ( K ( � �    Value                             � K� �  `    Current                            	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           �    This function returns the laser diode limit current adjusted via the front poti.

Note: This function returns different values for different ports.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     B    This control returns the laser diode hardware limit current [A].   �����  �    Status                           K   �  �    Instrument Handle                � K� �  `    Limit Current                      	               	           �    This function calibrates a thermistor using the exponential method.

Note:

This function is not available on TEC modules with KRYO option.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the B-value (energy constant) [K].

Default Value: 3900.0 K     �    This control specifies the R-value (thermistor nominal resistance at temperature set as T-value) [Ohm].

Default Value: 10000.0 Ohm     V    This control specifies the T-value (nominal temperature) [�C].

Default Value: 25 �C   �����  �    Status                              �  �    Instrument Handle                � K ) �  `    B-Value                          � u ) �  `    R-Value                          � � ) �  `    T-Value                            	               3900.0    10000.0    25.0    �    This function returns the calibration values of the thermistor (exponential method).

Note:

This function is not available on TEC modules with KRYO option.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ~    This control selects the return values.

Valid Range:
0 - minimum Values
1 - maximum Values
2 - set Values (Default Value)

     '    This control returns the B-value [K].     )    This control returns the R-value [Ohm].     (    This control returns the T-value [�C].   	�����  �    Status                           
F   �  �    Instrument Handle                
� K ( � �    Values                           k K� �  `    B-Value                          � �� �  `    R-Value                          � �� �  `    T-Value                            	                         /minimum Values 0 maximum Values 1 set Values 2    	           	           	           �    This function calibrates a thermistor using the Steinhart-Hart method.

Note:

This function is not available on TEC modules with KRYO option.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     Z    This control specifies the C1-value (Steinhart-Hart parameter 1) .

Default Value: 0.001     \    This control specifies the C2-value (Steinhart-Hart parameter 2) .

Default Value: 0.00025     ^    This control specifies the C3-value (Steinhart-Hart parameter 3) .

Default Value: 0.0000001   D����  �    Status                           �   �  �    Instrument Handle                b K ) �  `    C1-Value                         � u ) �  `    C2-Value                         ( � ) �  `    C3-Value                           	               0.001    0.00025    
0.0000001    �    This function returns the calibration values of the thermistor (Steinhart-Hart method).

Note:

This function is not available on TEC modules with KRYO option.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ~    This control selects the return values.

Valid Range:
0 - minimum Values
1 - maximum Values
2 - set Values (Default Value)

     B    This control returns the C1-value (Steinhart-Hart parameter 1).
     B    This control returns the C2-value (Steinhart-Hart parameter 2).
     B    This control returns the C3-value (Steinhart-Hart parameter 3).
   r����  �    Status                           �   �  �    Instrument Handle                � K ( � �    Values                            K� �  `    C1-Value                         ` �� �  `    C2-Value                         � �� �  `    C3-Value                           	                         /minimum Values 0 maximum Values 1 set Values 2    	           	           	           %    This function sets the temperature.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     F    This control specifies the temperature [�C].

Default Value: 25.0 �C   �����  �    Status                           P   �  �    Instrument Handle                � K ) �  `    Temperature                        	               25.0    (    This function returns the temperature.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     ,    This control returns the temperature [�C].   $����  �    Status                           �   �  �    Instrument Handle                B K ( � �    Value                            � K� �  `    Temperature                        	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           $    This function sets the resistance.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     J    This control specifies the resistance [Ohm].

Default Value: 10000.0 Ohm   n����  �    Status                           �   �  �    Instrument Handle                � K ) �  `    Resistance                         	               10000.0    '    This function returns the resistance.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     ,    This control returns the resistance [Ohm].   �����  �    Status                           F   �  �    Instrument Handle                � K ( � �    Value                             w K� �  `    Resistance                         	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           G    This function sets the temperature window for temperature protection.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     L    This control specifies the temperature window [�C].

Default Value: 0.5 �C   "4����  �    Status                           "�   �  �    Instrument Handle                #R K ) �  `    Temperature Window                 	               0.5    /    This function returns the temperature window.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the temperature window [�C].   $�����  �    Status                           %   �  �    Instrument Handle                %� K ( � �    Value                            &C K� �  `    Temperature Window                 	                         ,minimum Value 0 maximum Value 1 set Value 2    	           F    This function sets the resistance window for temperature protection.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     O    This control specifies the resistance window [Ohm].

Default Value: 100.0 Ohm   '�����  �    Status                           (v   �  �    Instrument Handle                ) K ) �  `    Resistance Window                  	               100.0    .    This function returns the resistance window.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the resistance window [Ohm].   *Z����  �    Status                           *�   �  �    Instrument Handle                +x K ( � �    Value                            ,
 K� �  `    Resistance Window                  	                         ,minimum Value 0 maximum Value 1 set Value 2    	           $    This function sets the PID shares.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     =    This control specifies the P-share [%].

Default Value: 5 %     >    This control specifies the I-share [%].

Default Value: 15 %     >    This control specifies the D-share [%].

Default Value: 10 %   -�����  �    Status                           .   �  �    Instrument Handle                .� K ) �  `    P-Share                          .� u ) �  `    I-Share                          /E � ) �  `    D-Share                            	               5.0    15.0    10.0    '    This function returns the PID shares.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ~    This control selects the return values.

Valid Range:
0 - minimum Values
1 - maximum Values
2 - set Values (Default Value)

     '    This control returns the P-share [%].     '    This control returns the I-share [%].     '    This control returns the D-share [%].   0�����  �    Status                           1i   �  �    Instrument Handle                2 K ( � �    Values                           2� K� �  `    P-Share                          2� �� �  `    I-Share                          2� �� �  `    D-Share                            	                         /minimum Values 0 maximum Values 1 set Values 2    	           	           	           6    This function sets the limit current of the peltier.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the limit current of the peltier [A].

Default Value: 0.0 A   5	����  �    Status                           5�   �  �    Instrument Handle                6' K ) �  `    Limit Current                      	               0.0    2    This function returns the peltier limit current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     <    This control returns the limit current of the peltier [A].   7s����  �    Status                           7�   �  �    Instrument Handle                8� K ( � �    Value                            9 K� �  `    Limit Current                      	                         ,minimum Value 0 maximum Value 1 set Value 2    	           N    This function returns the peltier limit current adjusted via the front poti.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the peltier limit current [A].   :�����  �    Status                           ;V   �  �    Instrument Handle                ;� K� �  `    Limit Current                      	               	           ,    This function returns the peltier current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     /    This control returns the peltier current [A].   =!����  �    Status                           =�   �  �    Instrument Handle                >? K� �  `    Current                            	               	           ,    This function returns the peltier voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     /    This control returns the peltier voltage [V].   ?e����  �    Status                           ?�   �  �    Instrument Handle                @� K� �  `    Voltage                            	               	           ?    This function sets the calibration factor of the photo diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     a    This control specifies the calibration factor of the photo diode [A/W].

Default Value: 1.0 A/W   A�����  �    Status                           B;   �  �    Instrument Handle                B� K ) �  `    Calibration Factor                 	               1.0    B    This function returns the calibration factor of the photo diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     G    This control returns the calibration factor of the photo diode [A/W].   DC����  �    Status                           D�   �  �    Instrument Handle                Ea K ( � �    Value                            E� K� �  `    Calibration factor                 	                         ,minimum Value 0 maximum Value 1 set Value 2    	           -    This function sets the laser diode current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     K    This control specifies the laser diode current [A].

Default Value: 0.0 A   G�����  �    Status                           H   �  �    Instrument Handle                H� K ) �  `    Current                            	               0.0    0    This function returns the laser diode current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the laser diode current [A].   I�����  �    Status                           Jo   �  �    Instrument Handle                K K ( � �    Value                            K� K� �  `    Current                            	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           -    This function sets the photo diode current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     K    This control specifies the photo diode current [A].

Default Value: 0.0 A   MJ����  �    Status                           M�   �  �    Instrument Handle                Nh K ) �  `    Current                            	               0.0    2    This function returns the photo diode current. 
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the photo diode current [A].   O�����  �    Status                           P*   �  �    Instrument Handle                P� K ( � �    Value                            Q[ K� �  `    Current                            	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           '    This function sets the optical power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     E    This control specifies the optical power [W].

Default Value: 0.0 W   R�����  �    Status                           S~   �  �    Instrument Handle                T K ) �  `    Optical Power                      	               0.0    *    This function returns the optical power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     -    This control returns the optical power [W].   UR����  �    Status                           U�   �  �    Instrument Handle                Vp K ( � �    Value                            W K� �  `    Optical Power                      	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           2    This function sets the photo diode bias voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     P    This control specifies the photo diode bias voltage [V].

Default Value: 0.0 V   X�����  �    Status                           Y*   �  �    Instrument Handle                Y� K ) �  `    Bias Voltage                       	               0.0    )    This function returns the bias voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     ,    This control returns the bias voltage [V].   [����  �    Status                           [�   �  �    Instrument Handle                \& K ( � �    Value                            \� K� �  `    Bias Voltage                       	                         ,minimum Value 0 maximum Value 1 set Value 2    	           :    This function sets the limit current of the laser diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     X    This control specifies the limit current of the laser diode [A].

Default Value: 0.0 A   ^Y����  �    Status                           ^�   �  �    Instrument Handle                _w K ) �  `    Limit Current                      	               0.0    6    This function returns the laser diode limit current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     @    This control returns the limit current of the laser diode [A].   `�����  �    Status                           aJ   �  �    Instrument Handle                a� K ( � �    Value                            bj K� �  `    Limit Current                      	                         ,minimum Value 0 maximum Value 1 set Value 2    	           R    This function returns the laser diode limit current adjusted via the front poti.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     B    This control returns the laser diode hardware limit current [A].   d7����  �    Status                           d�   �  �    Instrument Handle                eU K� �  `    Limit Current                      	               	           0    This function returns the laser diode voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     3    This control returns the laser diode voltage [V].   f�����  �    Status                           g   �  �    Instrument Handle                g� K� �  `    Voltage                            	               	           E    This function calibrates a thermistor using the exponential method.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the B-value (energy constant) [K].

Default Value: 3900.0 K     �    This control specifies the R-value (thermistor nominal resistance at temperature set as T-value) [Ohm].

Default Value: 10000.0 Ohm     V    This control specifies the T-value (nominal temperature) [�C].

Default Value: 25 �C   h�����  �    Status                           ir   �  �    Instrument Handle                j K ) �  `    B-Value                          jm u ) �  `    R-Value                          j� � ) �  `    T-Value                            	               3900.0    10000.0    25.0    V    This function returns the calibration values of the thermistor (exponential method).     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ~    This control selects the return values.

Valid Range:
0 - minimum Values
1 - maximum Values
2 - set Values (Default Value)

     '    This control returns the B-value [K].     )    This control returns the R-value [Ohm].     (    This control returns the T-value [�C].   l�����  �    Status                           mk   �  �    Instrument Handle                n
 K ( � �    Values                           n� K� �  `    B-Value                          n� �� �  `    R-Value                          n� �� �  `    T-Value                            	                         /minimum Values 0 maximum Values 1 set Values 2    	           	           	           H    This function calibrates a thermistor using the Steinhart-Hart method.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     Z    This control specifies the C1-value (Steinhart-Hart parameter 1) .

Default Value: 0.001     \    This control specifies the C2-value (Steinhart-Hart parameter 2) .

Default Value: 0.00025     ^    This control specifies the C3-value (Steinhart-Hart parameter 3) .

Default Value: 0.0000001   q ����  �    Status                           q�   �  �    Instrument Handle                r> K ) �  `    C1-Value                         r� u ) �  `    C2-Value                         s � ) �  `    C3-Value                           	               0.001    0.00025    
0.0000001    Y    This function returns the calibration values of the thermistor (Steinhart-Hart method).     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ~    This control selects the return values.

Valid Range:
0 - minimum Values
1 - maximum Values
2 - set Values (Default Value)

     B    This control returns the C1-value (Steinhart-Hart parameter 1).
     B    This control returns the C2-value (Steinhart-Hart parameter 2).
     B    This control returns the C3-value (Steinhart-Hart parameter 3).
   u����  �    Status                           u�   �  �    Instrument Handle                v# K ( � �    Values                           v� K� �  `    C1-Value                         v� �� �  `    C2-Value                         w= �� �  `    C3-Value                           	                         /minimum Values 0 maximum Values 1 set Values 2    	           	           	           %    This function sets the temperature.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     F    This control specifies the temperature [�C].

Default Value: 25.0 �C   yd����  �    Status                           y�   �  �    Instrument Handle                z� K ) �  `    Temperature                        	               25.0    (    This function returns the temperature.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     ,    This control returns the temperature [�C].   {�����  �    Status                           |6   �  �    Instrument Handle                |� K ( � �    Value                            }g K� �  `    Temperature                        	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           $    This function sets the resistance.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     J    This control specifies the resistance [Ohm].

Default Value: 10000.0 Ohm   ����  �    Status                           �   �  �    Instrument Handle                � K ) �  `    Resistance                         	               10000.0    '    This function returns the resistance.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     ,    This control returns the resistance [Ohm].   �Z����  �    Status                           ��   �  �    Instrument Handle                �x K ( � �    Value                            �
 K� �  `    Resistance                         	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           G    This function sets the temperature window for temperature protection.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     L    This control specifies the temperature window [�C].

Default Value: 0.5 �C   ������  �    Status                           �F   �  �    Instrument Handle                �� K ) �  `    Temperature Window                 	               0.5    /    This function returns the temperature window.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the temperature window [�C].   �&����  �    Status                           ��   �  �    Instrument Handle                �D K ( � �    Value                            �� K� �  `    Temperature Window                 	                         ,minimum Value 0 maximum Value 1 set Value 2    	           F    This function sets the resistance window for temperature protection.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     O    This control specifies the resistance window [Ohm].

Default Value: 100.0 Ohm   ������  �    Status                           �	   �  �    Instrument Handle                �� K ) �  `    Resistance Window                  	               100.0    .    This function returns the resistance window.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     3    This control returns the resistance window [Ohm].   ������  �    Status                           �l   �  �    Instrument Handle                � K ( � �    Value                            �� K� �  `    Resistance Window                  	                         ,minimum Value 0 maximum Value 1 set Value 2    	           $    This function sets the PID shares.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     =    This control specifies the P-share [%].

Default Value: 5 %     >    This control specifies the I-share [%].

Default Value: 15 %     >    This control specifies the D-share [%].

Default Value: 10 %   �/����  �    Status                           ��   �  �    Instrument Handle                �M K ) �  `    P-Share                          �� u ) �  `    I-Share                          �� � ) �  `    D-Share                            	               5.0    15.0    10.0    '    This function returns the PID shares.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ~    This control selects the return values.

Valid Range:
0 - minimum Values
1 - maximum Values
2 - set Values (Default Value)

     '    This control returns the P-share [%].     '    This control returns the I-share [%].     '    This control returns the D-share [%].   �}����  �    Status                           ��   �  �    Instrument Handle                �� K ( � �    Values                           �! K� �  `    P-Share                          �P �� �  `    I-Share                          � �� �  `    D-Share                            	                         /minimum Values 0 maximum Values 1 set Values 2    	           	           	           6    This function sets the limit current of the peltier.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the limit current of the peltier [A].

Default Value: 0.0 A   ������  �    Status                           �   �  �    Instrument Handle                �� K ) �  `    Limit Current                      	               0.0    2    This function returns the peltier limit current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     <    This control returns the limit current of the peltier [A].   �����  �    Status                           ��   �  �    Instrument Handle                �$ K ( � �    Value                            �� K� �  `    Limit Current                      	                         ,minimum Value 0 maximum Value 1 set Value 2    	           ,    This function returns the peltier current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     /    This control returns the peltier current [A].   �H����  �    Status                           ��   �  �    Instrument Handle                �f K� �  `    Current                            	               	           ,    This function returns the peltier voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     /    This control returns the peltier voltage [V].   ������  �    Status                           �   �  �    Instrument Handle                �� K� �  `    Voltage                            	               	           p    This function sets the calibration factor of the photo diode.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     a    This control specifies the calibration factor of the photo diode [A/W].

Default Value: 1.0 A/W   �����  �    Status                           ��   �  �    Instrument Handle                �2 K ) �  `    Calibration Factor                 	               1.0    s    This function returns the calibration factor of the photo diode.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     G    This control returns the calibration factor of the photo diode [A/W].   ������  �    Status                           �K   �  �    Instrument Handle                �� K ( � �    Value                            �k K� �  `    Calibration factor                 	                         ,minimum Value 0 maximum Value 1 set Value 2    	           b    This function returns the photo diode current. 

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     3    This control returns the photo diode current [A].   �O����  �    Status                           ��   �  �    Instrument Handle                �m K� �  `    Current                            	               	           [    This function returns the optical power.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     -    This control returns the optical power [W].   ������  �    Status                           �E   �  �    Instrument Handle                �� K� �  `    Optical Power                      	               	           c    This function sets the photo diode bias voltage.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     P    This control specifies the photo diode bias voltage [V].

Default Value: 0.0 V   �?����  �    Status                           ��   �  �    Instrument Handle                �] K ) �  `    Bias Voltage                       	               0.0    Z    This function returns the bias voltage.

Note: This function affects only a single port.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ,    This control returns the bias voltage [V].     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
   ������  �    Status                           �L   �  �    Instrument Handle                �� K� �  `    Bias Voltage                     � K  � �    Value                              	               	                     ,minimum Value 0 maximum Value 1 set Value 2    �    This function sets the forward current and starts the measurement of the forward voltage.

This function works only with port one.

Note: 

This function is only available on PDA modules with UFWD option.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the forward current [A].

Default Value: 0.0 A   ������  �    Status                           �!   �  �    Instrument Handle                �� K ) �  `    Forward Current                    	               0.0    �    This function returns the forward current.

This function works only with port one.

Note:

This function is only available on PDA modules with UFWD option.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     /    This control returns the forward current [A].   �l����  �    Status                           ��   �  �    Instrument Handle                �� K ( � �    Value                            � K� �  `    Forward Current                    	                         ,minimum Value 0 maximum Value 1 set Value 2    	           �    This function returns the forward voltage.

This function works only with port one. 

Note: 

This function works only with port one.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     /    This control returns the forward voltage [V].   �����  �    Status                           ��   �  �    Instrument Handle                �+ K� �  `    Forward Voltage                    	               	           %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the laser power [dBm].

Default Value: 0.0 dBm   �J����  �    Status                           ��   �  �    Instrument Handle                �h K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     -    This control returns the laser power [dBm].   ������  �    Status                           �   �  �    Instrument Handle                �� K ( � �    Value                            �< K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     C    This control specifies the laser power [W].

Default Value: 0.0 W   ������  �    Status                           �H   �  �    Instrument Handle                �� K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the laser power [W].   �����  �    Status                           ė   �  �    Instrument Handle                �6 K ( � �    Value                            ŷ K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           0    This function sets the temperature difference.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     N    This control specifies the temperature difference [K].

Default Value: 0.0 K   �M����  �    Status                           ��   �  �    Instrument Handle                �k K ) �  `    Temperature Difference             	               0.0    3    This function returns the temperature difference.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     6    This control returns the temperature difference [K].   ɲ����  �    Status                           �1   �  �    Instrument Handle                �� K ( � �    Value                            �Q K� �  `    Temperature Difference             	                         ,minimum Value 0 maximum Value 1 set Value 2    	           %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the laser power [dBm].

Default Value: 0.0 dBm   ������  �    Status                           �f   �  �    Instrument Handle                � K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     -    This control returns the laser power [dBm].   �:����  �    Status                           Ϲ   �  �    Instrument Handle                �X K ( � �    Value                            �� K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     C    This control specifies the laser power [W].

Default Value: 0.0 W   �f����  �    Status                           ��   �  �    Instrument Handle                ӄ K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the laser power [W].   Ե����  �    Status                           �4   �  �    Instrument Handle                �� K ( � �    Value                            �T K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	          e    This function sets the coherence control ratio.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'CW Set LF Modulation', 
'CW Set LF Modulation Type' and 'CW Set LF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     P    This control specifies the coherence control ration [%].

Default Value: 0.0 %   �����  �    Status                           ٞ   �  �    Instrument Handle                �= K ) �  `    Coherence Control               ���� � ��                                            	               0.0    bNote: This function is not recommended for a 'B' type module. See function help for more details.   h    This function returns the coherence control ratio.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'CW Get LF Modulation', 
'CW Get LF Modulation Type' and 'CW Get LF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     7    This control returns the coherence control ratio [%].   �U����  �    Status                           ��   �  �    Instrument Handle                �s K ( � �    Value                            �� K� �  `    Coherence Control               ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           bNote: This function is not recommended for a 'B' type module. See function help for more details.    %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the laser power [dBm].

Default Value: 0.0 dBm   �%����  �    Status                           �   �  �    Instrument Handle                �C K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     -    This control returns the laser power [dBm].   �x����  �    Status                           ��   �  �    Instrument Handle                � K ( � �    Value                            � K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     C    This control specifies the laser power [W].

Default Value: 0.0 W   �����  �    Status                           �#   �  �    Instrument Handle                �� K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the laser power [W].   ������  �    Status                           �r   �  �    Instrument Handle                � K ( � �    Value                            � K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           $    This function sets the wavelength.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the wavelength [nm].

Default Value: 1550.0 nm   �����  �    Status                           �   �  �    Instrument Handle                �: K ) �  `    Wavelength                         	               1550.0    '    This function returns the wavelength.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the wavelength [nm].   �q����  �    Status                           ��   �  �    Instrument Handle                � K ( � �    Value                            � K� �  `    Wavelength                         	                         ,minimum Value 0 maximum Value 1 set Value 2    	           #    This function sets the frequency.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the frequency [THz].

Default Value: 193.1 THz   �����  �    Status                           �   �  �    Instrument Handle                � K ) �  `    Frequency                          	               193.1    &    This function returns the frequency.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the frequency [THz].   ������  �    Status                           �k   �  �    Instrument Handle                �
 K ( � �    Value                            �� K� �  `    Frequency                          	                         ,minimum Value 0 maximum Value 1 set Value 2    	           �    This function sets the LF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     O    This control specifies the LF modulation amplitude [%].

Default Value: 0.0 %   ������  �    Status                           �`   �  �    Instrument Handle                �� K ) �  `    LF Amplitude [%]                ���� � ��                                            	               0.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the LF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     7    This control returns the LF modulation amplitude [%].   ������  �    Status                           �   �  �    Instrument Handle                �� K ( � �    Value                            �9 K� �  `    LF Amplitude [%]                ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.    �    This function sets the LF modulation frequency.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the LF modulation frequency [Hz].

Default Value: 1000.0 Hz    .����  �    Status                            �   �  �    Instrument Handle                L K ) �  `    LF Frequency                    ���� � ��                                            	               1000.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the LF modulation frequency.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     8    This control returns the LF modulation frequency [Hz].   �����  �    Status                           n   �  �    Instrument Handle                 K ( � �    Value                            � K� �  `    LF Frequency                    ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.   @    This function returns the maximum allowed HF modulation voltage.

Note:

(1) 
This function is only available with option BIAS-T.

(2) 
This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     F    This control returns the maximum allowed HF modulation voltage [V].
   �����  �    Status                           	S   �  �    Instrument Handle                	� K� �  `    Max HF mod. Voltage             ���� � ��                                            	               	           nNote: This function only works with a 'B' type module with option BIAS-T. See function help for more details.    %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the laser power [dBm].

Default Value: 0.0 dBm   �����  �    Status                           M   �  �    Instrument Handle                � K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     -    This control returns the laser power [dBm].   !����  �    Status                           �   �  �    Instrument Handle                ? K ( � �    Value                            � K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     C    This control specifies the laser power [W].

Default Value: 0.0 W   M����  �    Status                           �   �  �    Instrument Handle                k K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the laser power [W].   �����  �    Status                              �  �    Instrument Handle                � K ( � �    Value                            ; K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           $    This function sets the wavelength.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the wavelength [nm].

Default Value: 1550.0 nm   �����  �    Status                           D   �  �    Instrument Handle                � K ) �  `    Wavelength                         	               1550.0    '    This function returns the wavelength.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the wavelength [nm].   ����  �    Status                           �   �  �    Instrument Handle                8 K ( � �    Value                            � K� �  `    Wavelength                         	                         ,minimum Value 0 maximum Value 1 set Value 2    	           #    This function sets the frequency.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the frequency [THz].

Default Value: 193.1 THz   B����  �    Status                           �   �  �    Instrument Handle                ` K ) �  `    Frequency                          	               193.1    &    This function returns the frequency.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the frequency [THz].   �����  �    Status                              �  �    Instrument Handle                � K ( � �    Value                             4 K� �  `    Frequency                          	                         ,minimum Value 0 maximum Value 1 set Value 2    	           +    This function sets the threshold voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     J    This control specifies the threshold voltage [V].

Default Value: -1.3 V   !�����  �    Status                           "D   �  �    Instrument Handle                "� K ) �  `    Threshold Voltage                  	               -1.3    .    This function returns the threshold voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     1    This control returns the threshold voltage [V].   $"����  �    Status                           $�   �  �    Instrument Handle                %@ K ( � �    Value                            %� K� �  `    Threshold Voltage                  	                         ,minimum Value 0 maximum Value 1 set Value 2    	          C    This function sets the modulation voltage.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'EA Set HF Modulation' and 
'EA Set HF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     H    This control specifies the modulation voltage [V].

Default Value: 0 V   (p����  �    Status                           (�   �  �    Instrument Handle                )� K ) �  `    Modulation Voltage              ���� � ��                                            	               0    bNote: This function is not recommended for a 'B' type module. See function help for more details.   E    This function returns the modulation voltage.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'EA Get HF Modulation' and
'EA Get HF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     2    This control returns the modulation voltage [V].   ,y����  �    Status                           ,�   �  �    Instrument Handle                -� K ( � �    Value                            . K� �  `    Modulation Voltage              ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           bNote: This function is not recommended for a 'B' type module. See function help for more details.    �    This function sets the LF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     O    This control specifies the LF modulation amplitude [%].

Default Value: 0.0 %   1����  �    Status                           1�   �  �    Instrument Handle                2- K ) �  `    LF Amplitude [%]                ���� � ��                                            	               0.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the LF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     7    This control returns the LF modulation amplitude [%].   4�����  �    Status                           5G   �  �    Instrument Handle                5� K ( � �    Value                            6g K� �  `    LF Amplitude [%]                ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.    �    This function sets the LF modulation frequency.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the LF modulation frequency [Hz].

Default Value: 1000.0 Hz   9\����  �    Status                           9�   �  �    Instrument Handle                :z K ) �  `    LF Frequency                    ���� � ��                                            	               1000.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the LF modulation frequency.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     8    This control returns the LF modulation frequency [Hz].   =����  �    Status                           =�   �  �    Instrument Handle                >; K ( � �    Value                            >� K� �  `    LF Frequency                    ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.    �    This function sets the HF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     U    This control specifies the HF modulation amplitude ratio [%].

Default Value: 0.0 %   A�����  �    Status                           B1   �  �    Instrument Handle                B� K ) �  `    HF Amplitude [%]                ���� � ��                                            	               0.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the HF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     =    This control returns the HF modulation amplitude ratio [%].   Eq����  �    Status                           E�   �  �    Instrument Handle                F� K ( � �    Value                            G K� �  `    HF Amplitude [%]                ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.    %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the laser power [dBm].

Default Value: 0.0 dBm   I@����  �    Status                           I�   �  �    Instrument Handle                J^ K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     -    This control returns the laser power [dBm].   K�����  �    Status                           L   �  �    Instrument Handle                L� K ( � �    Value                            M2 K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           0    This function returns the average laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     5    This control returns the average laser power [dBm].   N�����  �    Status                           OI   �  �    Instrument Handle                O� K� �  `    Power                              	               	           %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     C    This control specifies the laser power [W].

Default Value: 0.0 W   Q����  �    Status                           Q�   �  �    Instrument Handle                R+ K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the laser power [W].   S\����  �    Status                           S�   �  �    Instrument Handle                Tz K ( � �    Value                            T� K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           0    This function returns the average laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     3    This control returns the average laser power [W].   V�����  �    Status                           W   �  �    Instrument Handle                W� K� �  `    Power                              	               	           $    This function sets the wavelength.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the wavelength [nm].

Default Value: 1550.0 nm   X�����  �    Status                           YP   �  �    Instrument Handle                Y� K ) �  `    Wavelength                         	               1550.0    '    This function returns the wavelength.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the wavelength [nm].   [&����  �    Status                           [�   �  �    Instrument Handle                \D K ( � �    Value                            \� K� �  `    Wavelength                         	                         ,minimum Value 0 maximum Value 1 set Value 2    	           #    This function sets the frequency.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the frequency [THz].

Default Value: 193.1 THz   ^N����  �    Status                           ^�   �  �    Instrument Handle                _l K ) �  `    Frequency                          	               193.1    &    This function returns the frequency.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the frequency [THz].   `�����  �    Status                           a    �  �    Instrument Handle                a� K ( � �    Value                            b@ K� �  `    Frequency                          	                         ,minimum Value 0 maximum Value 1 set Value 2    	           +    This function sets the threshold voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     J    This control specifies the threshold voltage [V].

Default Value: -1.3 V   c�����  �    Status                           dP   �  �    Instrument Handle                d� K ) �  `    Threshold Voltage                  	               -1.3    .    This function returns the threshold voltage.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     1    This control returns the threshold voltage [V].   f.����  �    Status                           f�   �  �    Instrument Handle                gL K ( � �    Value                            g� K� �  `    Threshold Voltage                  	                         ,minimum Value 0 maximum Value 1 set Value 2    	          (    This function sets the modulation current.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'DIR Set HF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     P    This control specifies the modulation current ratio [%].

Default Value: 0.0 %   ja����  �    Status                           j�   �  �    Instrument Handle                k K ) �  `    Modulation Current [%]          ���� � ��                                            	               0    bNote: This function is not recommended for a 'B' type module. See function help for more details.   +    This function returns the modulation current.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'DIR Get HF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     8    This control returns the modulation current ratio [%].   nX����  �    Status                           n�   �  �    Instrument Handle                ov K ( � �    Value                            o� K� �  `    Modulation Current [%]          ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           bNote: This function is not recommended for a 'B' type module. See function help for more details.    �    This function sets the HF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     U    This control specifies the HF modulation amplitude ratio [%].

Default Value: 0.0 %   r�����  �    Status                           ss   �  �    Instrument Handle                t K ) �  `    HF Amplitude [%]                ���� � ��                                            	               0.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the LF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     =    This control returns the LF modulation amplitude ratio [%].   v�����  �    Status                           w2   �  �    Instrument Handle                w� K ( � �    Value                            xR K� �  `    LF Amplitude [%]                ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.    �    This function sets the LF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     O    This control specifies the LF modulation amplitude [%].

Default Value: 0.0 %   {M����  �    Status                           {�   �  �    Instrument Handle                |k K ) �  `    LF Amplitude [%]                ���� � ��                                            	               0.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the LF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     7    This control returns the LF modulation amplitude [%].   ����  �    Status                           �   �  �    Instrument Handle                �$ K ( � �    Value                            �� K� �  `    LF Amplitude [%]                ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.    �    This function sets the LF modulation frequency.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the LF modulation frequency [Hz].

Default Value: 1000.0 Hz   ������  �    Status                           �   �  �    Instrument Handle                �� K ) �  `    LF Frequency                    ���� � ��                                            	               1000.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the LF modulation frequency.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     8    This control returns the LF modulation frequency [Hz].   �[����  �    Status                           ��   �  �    Instrument Handle                �y K ( � �    Value                            �� K� �  `    LF Frequency                    ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.   k    This function sets the coherence control ratio.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'CCDM Set LF Modulation', 
'CCDM Set LF Modulation Type' and 'CCDM Set LF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     P    This control specifies the coherence control ration [%].

Default Value: 0.0 %   �k����  �    Status                           ��   �  �    Instrument Handle                �� K ) �  `    Coherence Control               ���� � ��                                            	               0.0    bNote: This function is not recommended for a 'B' type module. See function help for more details.   n    This function returns the coherence control ratio.

Note:

This function is not recommended for a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.

Instead of this function use 'CCDM Get LF Modulation', 
'CCDM Get LF Modulation Type' and 'CCDM Get LF Amplitude'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     7    This control returns the coherence control ratio [%].   ������  �    Status                           �&   �  �    Instrument Handle                �� K ( � �    Value                            �F K� �  `    Coherence Control               ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           bNote: This function is not recommended for a 'B' type module. See function help for more details.    %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the laser power [dBm].

Default Value: 0.0 dBm   �w����  �    Status                           ��   �  �    Instrument Handle                �� K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value     -    This control returns the laser power [dBm].   ������  �    Status                           �I   �  �    Instrument Handle                �� K ( � �    Value                            �y K� �  `    Power                              	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     C    This control specifies the laser power [W].

Default Value: 0.0 W   �����  �    Status                           ��   �  �    Instrument Handle                �3 K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value     +    This control returns the laser power [W].   �d����  �    Status                           ��   �  �    Instrument Handle                �� K ( � �    Value                            � K� �  `    Power                              	                         ;minimum Value 0 maximum Value 1 set Value 2 actual Value 3    	           $    This function sets the wavelength.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the wavelength [nm].

Default Value: 1550.0 nm   ������  �    Status                           �+   �  �    Instrument Handle                �� K ) �  `    Wavelength                         	               1550.0    '    This function returns the wavelength.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the wavelength [nm].   �����  �    Status                           ��   �  �    Instrument Handle                � K ( � �    Value                            �� K� �  `    Wavelength                         	                         ,minimum Value 0 maximum Value 1 set Value 2    	           #    This function sets the frequency.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the frequency [THz].

Default Value: 193.1 THz   �)����  �    Status                           ��   �  �    Instrument Handle                �G K ) �  `    Frequency                          	               193.1    &    This function returns the frequency.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the frequency [THz].   �|����  �    Status                           ��   �  �    Instrument Handle                �� K ( � �    Value                            � K� �  `    Frequency                          	                         ,minimum Value 0 maximum Value 1 set Value 2    	           �    This function sets the LF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     O    This control specifies the LF modulation amplitude [%].

Default Value: 0.0 %   �q����  �    Status                           ��   �  �    Instrument Handle                �� K ) �  `    LF Amplitude [%]                ���� � ��                                            	               0.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the LF modulation amplitude.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     7    This control returns the LF modulation amplitude [%].   �*����  �    Status                           ��   �  �    Instrument Handle                �H K ( � �    Value                            �� K� �  `    LF Amplitude [%]                ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.    �    This function sets the LF modulation frequency.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the LF modulation frequency [Hz].

Default Value: 1000.0 Hz   ������  �    Status                           �=   �  �    Instrument Handle                �� K ) �  `    LF Frequency                    ���� � ��                                            	               1000.0    [Note: This function only works with a 'B' type module. See function help for more details.    �    This function returns the LF modulation frequency.

Note:

This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     8    This control returns the LF modulation frequency [Hz].   �����  �    Status                           ��   �  �    Instrument Handle                �� K ( � �    Value                            � K� �  `    LF Frequency                    ���� � ��                                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           [Note: This function only works with a 'B' type module. See function help for more details.   @    This function returns the maximum allowed HF modulation voltage.

Note:

(1) 
This function is only available with option BIAS-T.

(2) 
This function only works with a 'B' type module which returns 249 as its type code. To get information about type codes see functions 'Get Slot Configuration' and 'Slot Data Query'.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     F    This control returns the maximum allowed HF modulation voltage [V].
   �d����  �    Status                           ��   �  �    Instrument Handle                �� K� �  `    Max HF mod. Voltage             ���� � ��                                            	               	           nNote: This function only works with a 'B' type module with option BIAS-T. See function help for more details.    %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     G    This control specifies the laser power [dBm].

Default Value: 0.0 dBm   �^����  �    Status                           ��   �  �    Instrument Handle                �| K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     -    This control returns the laser power [dBm].   ������  �    Status                           �0   �  �    Instrument Handle                �� K ( � �    Value                            �P K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           %    This function sets the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     C    This control specifies the laser power [W].

Default Value: 0.0 W   ������  �    Status                           �\   �  �    Instrument Handle                �� K ) �  `    Power                              	               0.0    (    This function returns the laser power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     +    This control returns the laser power [W].   �,����  �    Status                           ǫ   �  �    Instrument Handle                �J K ( � �    Value                            �� K� �  `    Power                              	                         ,minimum Value 0 maximum Value 1 set Value 2    	           0    This function sets the temperature difference.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     N    This control specifies the temperature difference [K].

Default Value: 0.0 K   �a����  �    Status                           ��   �  �    Instrument Handle                � K ) �  `    Temperature Difference             	               0.0    3    This function returns the temperature difference.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     6    This control returns the temperature difference [K].   ������  �    Status                           �E   �  �    Instrument Handle                �� K ( � �    Value                            �e K� �  `    Temperature Difference             	                         ,minimum Value 0 maximum Value 1 set Value 2    	           '    This function returns the wavelength.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     +    This control returns the wavelength [nm].   ������  �    Status                           �|   �  �    Instrument Handle                � K� �  `    Wavelength                         	               	           &    This function returns the frequency.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     +    This control returns the frequency [THz].   �7����  �    Status                           Ҷ   �  �    Instrument Handle                �U K� �  `    Frequency                          	               	           3    This function sets the LF modulation amplitude.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     O    This control specifies the LF modulation amplitude [%].

Default Value: 0.0 %   �~����  �    Status                           ��   �  �    Instrument Handle                ՜ K ) �  `    LF Amplitude [%]                   	               0.0    6    This function returns the LF modulation amplitude.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     7    This control returns the LF modulation amplitude [%].   ������  �    Status                           �f   �  �    Instrument Handle                � K ( � �    Value                            ؆ K� �  `    LF Amplitude [%]                   	                         ,minimum Value 0 maximum Value 1 set Value 2    	           3    This function sets the LF modulation frequency.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the LF modulation frequency [Hz].

Default Value: 1000.0 Hz   �+����  �    Status                           ڪ   �  �    Instrument Handle                �I K ) �  `    LF Frequency                       	               1000.0    6    This function returns the LF modulation frequency.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     8    This control returns the LF modulation frequency [Hz].   ܜ����  �    Status                           �   �  �    Instrument Handle                ݺ K ( � �    Value                            �; K� �  `    LF Frequency                       	                         ,minimum Value 0 maximum Value 1 set Value 2    	           -    This function sets the laser diode current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     K    This control specifies the laser diode current [A].

Default Value: 0.0 A   ������  �    Status                           �Z   �  �    Instrument Handle                �� K ) �  `    Current                            	               0.0    0    This function returns the laser diode current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     3    This control returns the laser diode current [A].   �:����  �    Status                           �   �  �    Instrument Handle                �X K ( � �    Value                            �� K� �  `    Current                            	                         ,minimum Value 0 maximum Value 1 set Value 2    	           :    This function sets the limit current of the laser diode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     X    This control specifies the limit current of the laser diode [A].

Default Value: 0.0 A   �����  �    Status                           �    �  �    Instrument Handle                � K ) �  `    Limit Current                      	               0.0    6    This function returns the laser diode limit current.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     @    This control returns the limit current of the laser diode [A].   ������  �    Status                           �r   �  �    Instrument Handle                � K ( � �    Value                            � K� �  `    Limit Current                      	                         ,minimum Value 0 maximum Value 1 set Value 2    	           )    This function sets the TEC temperature.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     F    This control specifies the temperature [�C].

Default Value: 25.0 �C   �6����  �    Status                           �   �  �    Instrument Handle                �T K ) �  `    Temperature                        	               25.0    ,    This function returns the TEC temperature.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     ,    This control returns the temperature [�C].   �����  �    Status                           �   �  �    Instrument Handle                � K ( � �    Value                            �, K� �  `    Temperature                        	                         ,minimum Value 0 maximum Value 1 set Value 2    	           /    This function sets the thermistor resistance.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     J    This control specifies the resistance [Ohm].

Default Value: 10000.0 Ohm   ������  �    Status                           �A   �  �    Instrument Handle                �� K ) �  `    Resistance                         	               10000.0    2    This function returns the thermistor resistance.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
3 - actual Value
     ,    This control returns the resistance [Ohm].   �&����  �    Status                           �   �  �    Instrument Handle                �D K ( � �    Value                            �� K� �  `    Resistance                         	                         ,minimum Value 0 maximum Value 1 set Value 2    	           3    This function sets the LF modulation amplitude.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     O    This control specifies the LF modulation amplitude [%].

Default Value: 0.0 %   �p����  �    Status                           ��   �  �    Instrument Handle                �� K ) �  `    LF Amplitude [%]                   	               0.0    6    This function returns the LF modulation amplitude.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     7    This control returns the LF modulation amplitude [%].   ������  �    Status                           �X   �  �    Instrument Handle                �� K ( � �    Value                            �x K� �  `    LF Amplitude [%]                   	                         ,minimum Value 0 maximum Value 1 set Value 2    	           3    This function sets the LF modulation frequency.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     T    This control specifies the LF modulation frequency [Hz].

Default Value: 1000.0 Hz   �����  �    Status                           ��   �  �    Instrument Handle                �; K ) �  `    LF Frequency                       	               1000.0    6    This function returns the LF modulation frequency.

     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     y    This control selects the return value.

Valid Range:
0 - minimum Value
1 - maximum Value
2 - set Value (Default Value)
     8    This control returns the LF modulation frequency [Hz].   ������  �    Status                           �   �  �    Instrument Handle                �� K ( � �    Value                             - K� �  `    LF Frequency                       	                         ,minimum Value 0 maximum Value 1 set Value 2    	           )    This function returns the output power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     .    This control returns the output power [dBm].   �����  �    Status                           H   �  �    Instrument Handle                � K� �  `    Power                              	               	           )    This function returns the output power.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     ,    This control returns the output power [W].   	����  �    Status                           �   �  �    Instrument Handle                ' K� �  `    Power                              	               	           F    This function sets the parameters for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     b    This control specifies the number of measurement steps.

Valid Range:   2 .. 1001 (default: 100)     ^    This control specifies the number of measurement values.

Valid Range:   1 .. 8 (default: 1)   d����  �    Status                           �   �  �    Instrument Handle                � K ; �  `    Steps                            � K� �  `    Measurement Values                 	               100    1    I    This function returns the parameters for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     8    This control returns the number of measurement steps.
     9    This control returns the number of measurement values.
   	�����  �    Status                           
   �  �    Instrument Handle                
� K ; �  `    Steps                            
� K� �  `    Measurement Values                 	               	            	            @    This function starts or stops the electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects mode of the electrical characterisation.

Possible Values:

  0 - Stop Characterisation (Default Value)
  1 - Continouos Mode
  2 - Triggered Mode
   v����  �    Status                           �   �  �    Instrument Handle                � K � �       Function                           	                          ;Stop Characterisation 0 Continouos Mode 1 Triggered Mode 2    T    This function returns the measurement values of the electrical characterisation. 
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     L    This control returns the electrical characterisation measurement value 1.
     �    This control returns the electrical characterisation measurement value 2.

Note:

You may pass 0 if you don't need this value.     �    This control returns the electrical characterisation measurement value 3.

Note:

You may pass 0 if you don't need this value.     �    This control returns the electrical characterisation measurement value 4.

Note:

You may pass 0 if you don't need this value.     �    This control returns the electrical characterisation measurement value 5.

Note:

You may pass 0 if you don't need this value.     �    This control returns the electrical characterisation measurement value 6.

Note:

You may pass 0 if you don't need this value.     �    This control returns the electrical characterisation measurement value 7.

Note:

You may pass 0 if you don't need this value.     �    This control returns the electrical characterisation measurement value 8.

Note:

You may pass 0 if you don't need this value.     �    This control specifies the number of measurement values.

Valid Range:   1 .. 8 (default: 1)

Note:

The value must be the same value as specified in the 
<Set ELCH Parameters> function.
   �����  �    Status                              �  �    Instrument Handle                � s ' �  `    Value 1                           s � �  `    Value 2                          � s �  `    Value 3                           s� �  `    Value 4                          � � ' �  `    Value 5                          - � � �  `    Value 6                          � � �  `    Value 7                          = �� 	�  `    Value 8                          � 7 ' �  `    Measurement Values                 	               	           	           	           	           	           	           	           	           1    s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   �����  �    Status                           @   �  �    Instrument Handle                � K ( � �    Set Parameter                    { K � �  `    Start Value                      � K� �  `    Stop Value                         	                          &Laser Current 0 Photo Diode Current 1    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   M����  �    Status                           �   �  �    Instrument Handle                k K ( � �    Set Parameter                     K� �  `    Stop Value                       O K � �  `    Start Value                        	                          &Laser Current 0 Photo Diode Current 1    	           	           y    This function selects the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
2 - Laser Voltage
     �    This control specifies the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.

Valid Range  : 1..8
Default Value: 1   !����  �    Status                           !�   �  �    Instrument Handle                "� K ( � �    Measurement Parameter            #S K� �  `    Position                           	                          6Laser Current 0 Photo Diode Current 1 Laser Voltage 2    1    y    This function returns the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
2 - Laser Voltage
     x    This control returns the position of the selected measurement parameter in the <Get Characterisation Values> function.   %�����  �    Status                           &)   �  �    Instrument Handle                &� K ( � �    Measurement Parameter            '~ L� �  `    Position                           	                          6Laser Current 0 Photo Diode Current 1 Laser Voltage 2    	            s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   )�����  �    Status                           *-   �  �    Instrument Handle                *� K ( � �    Set Parameter                    +h K � �  `    Start Value                      +� K� �  `    Stop Value                         	                          &Laser Current 0 Photo Diode Current 1    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   .:����  �    Status                           .�   �  �    Instrument Handle                /X K ( � �    Set Parameter                    /� K� �  `    Stop Value                       0< K � �  `    Start Value                        	                          &Laser Current 0 Photo Diode Current 1    	           	           y    This function selects the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
     �    This control specifies the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.

Valid Range  : 1..8
Default Value: 1   2l����  �    Status                           2�   �  �    Instrument Handle                3� K ( � �    Measurement Parameter            4. K� �  `    Position                           	                          &Laser Current 0 Photo Diode Current 1    1    y    This function returns the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
     x    This control returns the position of the selected measurement parameter in the <Get Characterisation Values> function.   6u����  �    Status                           6�   �  �    Instrument Handle                7� K ( � �    Measurement Parameter            87 L� �  `    Position                           	                          &Laser Current 0 Photo Diode Current 1    	            y    This function selects the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Peltier Current (Default Value)
1 - Peltier Voltage
2 - Resistance
3 - Temperature
     �    This control specifies the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.

Valid Range  : 1..8
Default Value: 1   :]����  �    Status                           :�   �  �    Instrument Handle                ;{ K ( � �    Measurement Parameter            << K� �  `    Position                           	                          ?Peltier Current 0 Peltier Voltage 1 Resistance 2 Temperature 3    1    y    This function returns the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Peltier Current (Default Value)
1 - Peltier Voltage
2 - Resistance
3 - Temperature
     x    This control returns the position of the selected measurement parameter in the <Get Characterisation Values> function.   >�����  �    Status                           ?   �  �    Instrument Handle                ?� K ( � �    Measurement Parameter            @{ L� �  `    Position                           	                          ?Peltier Current 0 Peltier Voltage 1 Resistance 2 Temperature 3    	            s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
2 - Photo Diode Bias Voltage
     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   B�����  �    Status                           C3   �  �    Instrument Handle                C� K ( � �    Set Parameter                    D� K � �  `    Start Value                      E K� �  `    Stop Value                         	                          5Laser Current 0 Photo Diode Current 1 Bias Voltage 2    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
2 - Photo Diode Bias Voltage
     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   Gl����  �    Status                           G�   �  �    Instrument Handle                H� K ( � �    Set Parameter                    IC K� �  `    Stop Value                       I� K � �  `    Start Value                        	                          5Laser Current 0 Photo Diode Current 1 Bias Voltage 2    	           	           y    This function selects the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
2 - Laser Voltage
3 - Peltier Current
4 - Peltier Voltage
5 - Resistance
6 - Temperature
     �    This control specifies the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.

Valid Range  : 1..8
Default Value: 1   K�����  �    Status                           LI   �  �    Instrument Handle                L� K ( � �    Measurement Parameter            M� K� �  `    Position                           	                          uLaser Current 0 Photo Diode Current 1 Laser Voltage 2 Peltier Current 3 Peltier Voltage 4 Resistance 5 Temperature 6    1    y    This function returns the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Laser Current (Default Value)
1 - Photo Diode Current
2 - Laser Voltage
3 - Peltier Current
4 - Peltier Voltage
5 - Resistance
6 - Temperature
     x    This control returns the position of the selected measurement parameter in the <Get Characterisation Values> function.   P{����  �    Status                           P�   �  �    Instrument Handle                Q� K ( � �    Measurement Parameter            R� L� �  `    Position                           	                          uLaser Current 0 Photo Diode Current 1 Laser Voltage 2 Peltier Current 3 Peltier Voltage 4 Resistance 5 Temperature 6    	            s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Photo Diode Bias Voltage (Default Value)     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   U����  �    Status                           U�   �  �    Instrument Handle                V# K ( � �    Set Parameter                    V� K � �  `    Start Value                      W2 K� �  `    Stop Value                         	                          Bias Voltage 0    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Photo Diode Bias Voltage (Default Value)     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   Yl����  �    Status                           Y�   �  �    Instrument Handle                Z� K ( � �    Set Parameter                    [ K� �  `    Stop Value                       [` K � �  `    Start Value                        	                          Bias Voltage 0    	           	           y    This function selects the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Photo Diode Current (Default Value)     �    This control specifies the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.

Valid Range  : 1..8
Default Value: 1   ]y����  �    Status                           ]�   �  �    Instrument Handle                ^� K ( � �    Measurement Parameter            _( K� �  `    Position                           	                          Photo Diode Current 0    1    y    This function returns the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Photo Diode Current (Default Value)     x    This control returns the position of the selected measurement parameter in the <Get Characterisation Values> function.   a_����  �    Status                           a�   �  �    Instrument Handle                b} K ( � �    Measurement Parameter            c L� �  `    Position                           	                          Photo Diode Current 0    	            s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   e����  �    Status                           e�   �  �    Instrument Handle                f< K ( � �    Set Parameter                    f� K � �  `    Start Value                      gL K� �  `    Stop Value                         	                          Power [dBm] 0 Power [W] 1    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   i�����  �    Status                           j   �  �    Instrument Handle                j� K ( � �    Set Parameter                    k> K� �  `    Stop Value                       k� K � �  `    Start Value                        	                          Power [dBm] 0 Power [W] 1    	           	           s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   m�����  �    Status                           n#   �  �    Instrument Handle                n� K ( � �    Set Parameter                    oQ K � �  `    Start Value                      o� K� �  `    Stop Value                         	                          Power [dBm] 0 Power [W] 1    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   r����  �    Status                           r�   �  �    Instrument Handle                s5 K ( � �    Set Parameter                    s� K� �  `    Stop Value                       t K � �  `    Start Value                        	                          Power [dBm] 0 Power [W] 1    	           	           s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   v*����  �    Status                           v�   �  �    Instrument Handle                wH K ( � �    Set Parameter                    w� K � �  `    Start Value                      xX K� �  `    Stop Value                         	                          Power [dBm] 0 Power [W] 1    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   z�����  �    Status                           {   �  �    Instrument Handle                {� K ( � �    Set Parameter                    |J K� �  `    Stop Value                       |� K � �  `    Start Value                        	                          Power [dBm] 0 Power [W] 1    	           	           s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   ~�����  �    Status                           /   �  �    Instrument Handle                � K ( � �    Set Parameter                    �] K � �  `    Start Value                      �� K� �  `    Stop Value                         	                          Power [dBm] 0 Power [W] 1    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   �#����  �    Status                           ��   �  �    Instrument Handle                �A K ( � �    Set Parameter                    �� K� �  `    Stop Value                       � K � �  `    Start Value                        	                          Power [dBm] 0 Power [W] 1    	           	           s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   �6����  �    Status                           ��   �  �    Instrument Handle                �T K ( � �    Set Parameter                    �� K � �  `    Start Value                      �d K� �  `    Stop Value                         	                          Power [dBm] 0 Power [W] 1    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   ������  �    Status                           �(   �  �    Instrument Handle                �� K ( � �    Set Parameter                    �V K� �  `    Stop Value                       �� K � �  `    Start Value                        	                          Power [dBm] 0 Power [W] 1    	           	           s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   ������  �    Status                           �;   �  �    Instrument Handle                �� K ( � �    Set Parameter                    �i K � �  `    Start Value                      �� K� �  `    Stop Value                         	                          Power [dBm] 0 Power [W] 1    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   �/����  �    Status                           ��   �  �    Instrument Handle                �M K ( � �    Set Parameter                    �� K� �  `    Stop Value                       �$ K � �  `    Start Value                        	                          Power [dBm] 0 Power [W] 1    	           	           y    This function selects the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     �    This control specifies the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.

Valid Range  : 1..8
Default Value: 1   �H����  �    Status                           ��   �  �    Instrument Handle                �f K ( � �    Measurement Parameter            �� K� �  `    Position                           	                          Power [dBm] 0 Power [W] 1    1    y    This function returns the position of the selected measurement parameter in the <Get ELCH Measurement Values> function.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the measurement parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     x    This control returns the position of the selected measurement parameter in the <Get Characterisation Values> function.   �8����  �    Status                           ��   �  �    Instrument Handle                �V K ( � �    Measurement Parameter            �� L� �  `    Position                           	                          Power [dBm] 0 Power [W] 1    	            s    This function selects the set parameter and specifies the start and stop value for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     y    This control specifies the start value of the selected parameter for a electrical characterisation.

Default Value: 0.0     x    This control specifies the stop value of the selected parameter for a electrical characterisation.

Default Value: 0.0   �����  �    Status                           ��   �  �    Instrument Handle                � K ( � �    Set Parameter                    �� K � �  `    Start Value                      �/ K� �  `    Stop Value                         	                          Power [dBm] 0 Power [W] 1    0.0    0.0    m    This function returns the start and stop value of the selected parameter for a electrical characterisation.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control selects the set parameter for a electrical characterisation.

Valid Range:
0 - Power [dBm] (Default Value)
1 - Power [W]     @    This control returns the stop value of the selected parameter.     A    This control returns the start value of the selected parameter.   �t����  �    Status                           ��   �  �    Instrument Handle                �� K ( � �    Set Parameter                    �! K� �  `    Stop Value                       �i K � �  `    Start Value                        	                          Power [dBm] 0 Power [W] 1    	           	           m    This function writes commands and queries to the instrument to modify parameters and query device settings.    ^    The user can use this control to send common commands and queries to the instrument. This control can also be used to write any valid command to the instrument.

Default Value:  "*RST"

Note:

The command or query to be sent to the instrument may be a literal enclosed in double quotes i.e. "*RST" or may be contained in a variable of type string.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   �� M E � �    Write Buffer                     ������  �    Status                           �f   �  �    Instrument Handle                  "*RST"    	              7    This function reads data from the instrument's output buffer and returns it to the specified variable in memory.

Notes:

(1) Because the instrument may return both numeric and text data in response to queries this function returns the data in string format.

(2) If valid data is not available at the instrument's output buffer when this function is called the instrument will hang up and the function will not return until it times out.  If the time-out is disabled this function will hang indefinitely and it may be necessary to reboot the computer to break out.    �    The number of bytes specified by this control should be greater than or equal to the number of bytes which are to be read from the instrument. If the actual number of bytes to be read is greater than the number this control specifies then multiple reads will be required to empty the instrument's output buffer.

If the instrument's output buffer is not emptied the instrument may return invalid data when future reads are performed.

Default Value:  50 (See NOTE 2)

Notes:

(1) If NO DATA is available at the instrument's output buffer when this function is called the instrument will hang up and the function will not return until it times out.  If the time-out is disabled, this function will hang indefinitely and it may be necessary to reboot the computer.

(2) If the number of bytes expected is greater than 50 the value of this control may be increased. If the actual number of bytes read is larger than the declared size of the read buffer a run-time error will be generated.
    �    The incoming data from the instrument is placed into this variable.

Notes:

(1) Because the instrument may return both numeric and text data in response to queries this function returns the data in string format.

(2) This function does not overwrite any old data left in the string variable from the last time the function was called. String data in LabWindows/CVI is terminated with an ASCII null(0x0) and string manipulation functions will only recognize data before the ASCII null.

(3) The declared size of the string variable must be greater than the actual number of bytes read from the instrument if it is not a run-time error will be generated.
    �    This variable contains the actual number of bytes read from the instrument. This is the value which is returned by the read function.

Note:

If the actual number of bytes read is less than the number of bytes specified in the Number Bytes To Read control then the output buffer has probably been emptied. If the read function fails and the number of bytes read is 0, the most probable cause for the failure is there was no data available at the instrument's output buffer.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   �� M K �  `    Number Bytes To Read             �� � H � �    Read Buffer                      �z Mx �  `    NumBytes Read                    �]����  �    Status                           ��   �  �    Instrument Handle                  50    	            	            	               _    This function polls the instrument status byte and returns if the finished bit (FIN) is set.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   �����  �    Status                           ��   �  �    Instrument Handle                  	                  This function resets the instrument to a known state and sends initialization commands to the instrument that set any necessary programmatic variables such as Headers Off, Short Command form, and Data Transfer Binary to the state necessary for the operation of the instrument driver.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   ������  �    Status                           �V   �  �    Instrument Handle                  	               U    This function runs the instrument's self test routine and returns the test result.
     �    This control contains the value returned from the instrument self test.  Zero means success.  For any other code, see the device's operator's manual.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   �� = 2 �  `    Self Test Result                 �l����  �    Status                           ��   �  �    Instrument Handle                  	           	               G    This function reads an error code from the instrument's error queue.
     N    This control returns the error code read from the instrument's error queue.
     �    This control returns the error message string read from the instrument's error message queue.

Note:

The array must contain at least 256 elements ViChar[256]. You may pass VI_NULL if you don't need this value.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   �� = 2 �  `    Error Code                       �� = � � ,    Error Message                    ������  �    Status                           �E   �  �    Instrument Handle                  	            	            	              W    This function takes the Status Code returned by the instrument driver functions, interprets it and returns it as a user readable string. 

Status Codes and Descriptions:

Status    Description
-------------------------------------------------
       0  No error (the call was successful).

--------  --- VISA Errors --- 
BFFF0000  Miscellaneous or system error occurred.
BFFF000E  Invalid session handle.
BFFF000F  Session could not be opened with a lock because the
          resource is already locked.
BFFF0011  Specified resource is not present.
BFFF0012  Invalid resource string (parsing error).
BFFF0013  Specified access mode is invalid.
BFFF0015  Timeout occurred before operation could complete.
BFFF0034  Violation of raw write protocol occurred.
BFFF0035  Violation of raw read protocol occurred.
BFFF0036  Device reported an output protocol error.
BFFF0037  Device reported an input protocol error.
BFFF0038  Bus error occurred during transfer.
BFFF003A  Invalid setup (attributes are not consistent).
BFFF003C  Insufficient resources to allocate system data.
BFFF005F  No listeners condition was detected.
BFFF0060  This interface is not the controller in charge.
BFFF0067  Operation is not supported on this session.
BFFF0071  The user buffer is not valid for the required size.
BFFF0072  The resource is valid but not currently accessible.
3FFF0077  The specified configuration either does not exist or
          could not be loaded; using VISA-specified defaults.
3FFF007D  Session opened successfully, but the device at the
          specified address is not responding.

--------  --- Instrument Driver Errors and Warnings --- 
3FFF0085  Unknown Status Code - VI_WARN_UNKNOWN_STATUS
3FFC0101  ID Query not supported - VI_WARN_NSUP_ID_QUERY   
3FFC0102  Reset not supported - VI_WARN_NSUP_RESET      
3FFC0103  Self Test not supported - VI_WARN_NSUP_SELF_TEST  
3FFC0104  Error Query not supported - VI_WARN_NSUP_ERROR_QUERY
3FFC0105  Revision Query not supported - VI_WARN_NSUP_REV_QUERY  
3FFF0005  The specified termination character was read.
3FFF0006  The specified number of bytes was read.
BFFC0001  Parameter 1 out of range.
BFFC0002  Parameter 2 out of range.
BFFC0003  Parameter 3 out of range.
BFFC0004  Parameter 4 out of range.
BFFC0005  Parameter 5 out of range.
BFFC0006  Parameter 6 out of range.
BFFC0007  Parameter 7 out of range.
BFFC0008  Parameter 8 out of range.
BFFC0011  Instrument returned invalid response to ID Query
BFFC0800  Error Opening File      VI_ERROR_INSTR_FILE_OPEN
BFFC0801  Error Writing to File   VI_ERROR_INSTR_FILE_WRITE
BFFC0803  Invalid Response VI_ERROR_INSTR_INTERPRETING_RESPONSE
BFFC0804  Error Polling Instruments FIN Bit
BFFC0805  Error querying Instrument Error Queue

--------  --- General Instrument Errors --- 
BFFC0964  Unknown command
BFFC0965  Invalid character
BFFC0966  Invalid numeric parameter
BFFC0967  Invalid text parameter
BFFC0968  Missing parameter
BFFC0969  Invalid separator
BFFC096B  Empty slot
BFFC096C  Parameter can not be set
BFFC096D  Wrong compound
BFFC096E  Unknown compound
BFFC096F  Wrong parameter
BFFC0970  Wrong command for the selected port
BFFC09BE  Parser buffer overflow
BFFC09C8  Data out of range
BFFC0A2C  Hardware error
BFFC0A2D  Software error
BFFC0A2E  Not implemented jet
BFFC0A30  Update required                                                      BFFC0A36  ELCH set value initialisation not complete                          BFFC0A37  ELCH read value(s) initialisation not complete
BFFC0A40  EEPROM write failed
BFFC0A41  EEPROM read back failed
BFFC0A42  EEPROM compare failed
BFFC0A90  Too many errors
BFFC0A9A  Query interrupted
BFFC0AA4  Query unterminated
BFFC0AF4  IEEE receive buffer overflow
BFFC0B58  Serial receive buffer overflow
BFFC0B59  Serial send timeout occoured

--------  --- LDC Module Errors --- 
BFFC0CE9  Interlock is open
BFFC0CEA  Open circuit
BFFC0CEB  Over temperature
BFFC0CEC  Internal power failure
BFFC0CED  No LD polarity change during laser on
BFFC0CEE  No PD polarity change during laser on
BFFC0CEF  No setting of ILD during constant power mode
BFFC0CF0  No setting of IMD during constant current mode
BFFC0CF1  Attempt to activate TWIN durin laser on
BFFC0CF2  Temperature is out of window
BFFC0CF3  No TEC in the system
BFFC0CF4  No bias change during laser on
BFFC0CF6  No calibrating of PD during laser on
BFFC0CF7  No TEC in this slot
BFFC0CF8  No mode change during laser on
BFFC0CFB  No PD polarity change during bias on in CP mode
        
--------  --- MLC Module Errors --- 
BFFC0F41  Interlock is open
BFFC0F43  Over temperature
BFFC0F44  Internal power failure
BFFC0F47  No setting of ILD during constant power mode
BFFC0F48  No setting of IMD during constant current mode
BFFC0F50  No mode change during laser on
BFFC0F53  No range change during laser on
BFFC0F54  Temperature is out of window
BFFC0F55  No TEC in the system
BFFC0F56  Attempt to activate TWIN durin laser on
BFFC0F57  No TEC in this slot
        
--------  --- TEC Module Errors --- 
BFFC0D4F  Over temperature
BFFC0D50  Wrong or no sensor
BFFC0D51  No calibrating of thermistor during TEC on
BFFC0D52  Wrong command for this sensor
BFFC0D53  No sensor change during TEC on allowed
BFFC0D6A  Command not valid for this module
        
--------  --- ITC Module Errors --- 
BFFC0E15  Interlock is open
BFFC0E16  Open circuit
BFFC0E17  Over temperature
BFFC0E18  Internal power failure
BFFC0E19  No calibrating of thermistor during TEC on
BFFC0E1A  No calibrating of PD during laser on
BFFC0E1B  No setting of ILD during constant power mode
BFFC0E1C  No setting of IMD during constant current mode
BFFC0E1D  No LD polarity change during laser on
BFFC0E1E  No PD polarity change during laser on
BFFC0E1F  No mode change during laser on                                
BFFC0E20  Wrong or no sensor                                            
BFFC0E21  Wrong command for this sensor                                 
BFFC0E22  No sensor change during TEC on allowed                        
BFFC0E23  Temperature is out of window
BFFC0E24  Attempt to activate TWIN durin laser on
          
--------  --- PDA Module Errors --- 
BFFC0E79  Can't switch on BIAS while photo current is negative
BFFC0E7A  Attempt to change polarity while BIAS is on
BFFC0E7B  Attempt to change measurement range while BIAS is on
BFFC0E7C  Attempt to measure Ufwd while BIAS is on
BFFC0E7D  Ufwd measurement failed - accuracy error
BFFC0E7E  Ufwd measurement failed - voltage overflow
          
--------  --- LS/SLED/WDM Module Errors --- 
BFFC0DB1  Over temperature                      
BFFC0DB2  Internal power failure           
BFFC0DB3  Temperature is out of window     
BFFC0DB4  Shutter error- fiber missing     
BFFC0DCE  Command not valid for this module
BFFC0E00  Service-Mode Error 1             
BFFC0E01  Service-Mode Error 2                  
BFFC0E02  No power change during modulation on allowed                  
BFFC0E04  Calibration required                  
BFFC0E05  No change of LF modulation type while modulation on                  
BFFC0E06  No LF-modulation possible - amplitude too high
BFFC0E07  Command not valid in service mode
BFFC0E08  Command only valid in service mode
BFFC0E09  No output power tune for this module
     t    This control accepts the Status Code returned from the instrument driver functions.

Default Value:
0 - VI_SUCCESS     �    This control returns the interpreted Status Code as a user readable message string.

Note:

The array must contain at least 256 elements ViChar[256].     l    This control contains the status code returned by the function call.

For Status Codes see function help.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  VI_NULL   �? =   �  `    Status Code                      � = � � �    Message                          �Z����  �    Status                           ��   �  �    Instrument Handle                  0    	            	           VI_NULL    A    This function returns the Instruments Identification Strings. 
     �    This control returns the Manufacturer Name.

Note:

The array must contain at least 256 elements ViChar[256]. You may pass VI_NULL if you don't need this value.     �    This control returns the Instrument Name.

Note:

The array must contain at least 256 elements ViChar[256]. You may pass VI_NULL if you don't need this value.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control returns the Instrument Serial Number.

Note:

The array must contain at least 256 elements ViChar[256]. You may pass VI_NULL if you don't need this value.     �    This control returns the Instrument Firmware Revision.

Note:

The array must contain at least 256 elements ViChar[256]. You may pass VI_NULL if you don't need this value.   � = 2 �  �    Manufacturer Name                �_ =, �  �    Instrument Name                  �����  �    Status                           �   �  �    Instrument Handle                �% � 2 �  �    Instrument Serial Number         �� �, �  �    Firmware Revision                  	            	            	               	            	           �    This function reads type codes and subtype codes of slot 1 ..8.

Valid return values for type codes and subtype codes are:

  Module                     Type  Subtype
  ----------------------------------------
  Empty slot                    0     0

  LDC                         191     0

  MLC (anode ground)           47     0
  MLC (cathode ground)         47     1

  TEC                         223     0
  TEC (PT100)                 223     1
  TEC (KRYO)                  223     2

  ITC                         159     0

  PDA (1 channel)             107     0
  PDA (2 channel)             107     1
  PDA (1 channel, UFWD)       107     2
  PDA (2 channel, UFWD)       107     3

  LS  (DIL)                   247     0
  LS  (BFY)                   243     3
  LS  (B-Type)                249     3

  SLED                        243     7
  SLED (B-Type)               249     7

  WDM-CW                      243     2
  WDM-CW (B-Type)             249     2

  WDM-EA                      243     0
  WDM-EA (B-Type)             249     0

  WDM-DIR                     243     6
  WDM-DIR (B-Type)            249     6

  WDM-CCDM                    243     4
  WDM-CCDM (B-Type)           249     4

  OSW (1->8)                  227     0
  OSW (2->2)                  227     1
  OSW (1->2)                  227     2
  OSW (1->4)                  227     3

  WDM-CWDM                    249     9

  WDM-ITC                     249     8

  BBS                         249    10

     j    This control returns the type code of slot 1. 
Note: You may pass VI_NULL if you don't need this value.
     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     l    This control returns the subtype code of slot 1.
Note: You may pass VI_NULL if you don't need this value.
     i    This control returns the type code of slot 2.
Note: You may pass VI_NULL if you don't need this value.
     l    This control returns the subtype code of slot 2.
Note: You may pass VI_NULL if you don't need this value.
     i    This control returns the type code of slot 3.
Note: You may pass VI_NULL if you don't need this value.
     l    This control returns the subtype code of slot 3.
Note: You may pass VI_NULL if you don't need this value.
     i    This control returns the type code of slot 4.
Note: You may pass VI_NULL if you don't need this value.
     l    This control returns the subtype code of slot 4.
Note: You may pass VI_NULL if you don't need this value.
     i    This control returns the type code of slot 5.
Note: You may pass VI_NULL if you don't need this value.
     l    This control returns the subtype code of slot 5.
Note: You may pass VI_NULL if you don't need this value.
     i    This control returns the type code of slot 6.
Note: You may pass VI_NULL if you don't need this value.
     l    This control returns the subtype code of slot 6.
Note: You may pass VI_NULL if you don't need this value.
     i    This control returns the type code of slot 7.
Note: You may pass VI_NULL if you don't need this value.
     l    This control returns the subtype code of slot 7.
Note: You may pass VI_NULL if you don't need this value.
     i    This control returns the type code of slot 8.
Note: You may pass VI_NULL if you don't need this value.
     l    This control returns the subtype code of slot 8.
Note: You may pass VI_NULL if you don't need this value.
   ��  3 �  P    Slot 1 Type                      �g����  �    Status                           ��   �  �    Instrument Handle                ��  � �  P    Slot 1 Subtype                   �� = �  P    Slot 2 Type                      �j � �  P    Slot 2 Subtype                   �� _ 3 �  P    Slot 3 Type                      �O _ � �  P    Slot 3 Subtype                   �� _= �  P    Slot 4 Type                      �4 _� �  P    Slot 4 Subtype                   � � 3 	�  P    Slot 5 Type                      � � � 
�  P    Slot 5 Subtype                   � �= �  P    Slot 6 Type                      �� �� �  P    Slot 6 Subtype                   �r � 3 �  P    Slot 7 Type                      �� � � �  P    Slot 7 Subtype                   �W �= �  P    Slot 8 Type                      �� �� �  P    Slot 8 Subtype                     	            	               	            	            	            	            	            	            	            	            	            	            	            	            	            	            	           �    This function reads the type code, subtype code, option bytes and the identification string of the active slot.

Valid return values for type codes and subtype codes are:

  Module                     Type  Subtype
  ----------------------------------------
  LDC                         191     0

  MLC (anode ground)           47     0
  MLC (cathode ground)         47     1

  TEC                         223     0
  TEC (PT100)                 223     1
  TEC (KRYO)                  223     2

  ITC                         159     0

  PDA (1 channel)             107     0
  PDA (2 channel)             107     1
  PDA (1 channel, UFWD)       107     2
  PDA (2 channel, UFWD)       107     3

  LS (DIL)                    247     0
  LS (BFY)                    243     3
  LS (B-Type)                 249     3

  SLED                        243     7
  SLED (B-Type)               249     7

  WDM-CW                      243     2
  WDM-CW (B-Type)             249     2

  WDM-EA                      243     0
  WDM-EA (B-Type)             249     0

  WDM-DIR                     243     6
  WDM-DIR (B-Type)            249     6

  WDM-CCDM                    243     4
  WDM-CCDM (B-Type)           249     4

  OSW (1->8)                  227     0
  OSW (2->2)                  227     1
  OSW (1->2)                  227     2
  OSW (1->4)                  227     3

  WDM-CWDM                    249     9

  WDM-ITC                     249     8

  BBS                         249    10

     r    This control returns the type code of the active slot.
Note: You may pass VI_NULL if you don't need this value.
     �    This control returns the identification string of the active slot.

Note:

The array must contain at least 21 elements ViChar[21]. You may pass VI_NULL if you don't need this value.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     u    This control returns the subtype code of the active slot.
Note: You may pass VI_NULL if you don't need this value.
     �    This control returns the option byte 1 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.
     �    This control returns the option byte 2 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.
     �    This control returns the option byte 3 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 4 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 5 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 6 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 7 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 8 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 9 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 10 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.   � =  �  P    Type Code                        3 = � � ,    Identification String            �����  �    Status                           q   �  �    Instrument Handle                 = � �  P    Subtype Code                     � �  �  P    Option Byte 1                    Q � � �  P    Option Byte 2                     � � �  P    Option Byte 3                    � �J �  P    Option Byte 4                    � �� �  P    Option Byte 5                    ^ �  	�  P    Option Byte 6                    	! � � 
�  P    Option Byte 7                    	� � � �  P    Option Byte 8                    
� �J �  P    Option Byte 9                    j �� �  P    Option Byte 10                     	            	            	               	            	            	            	            	            	            	            	            	            	            	           �    This function reads the type code, subtype code, serial number, option bytes and the identification string of the active slot.

Valid return values for type codes and subtype codes are:

  Module                     Type  Subtype
  ----------------------------------------
  LDC                         191     0

  MLC (anode ground)           47     0
  MLC (cathode ground)         47     1

  TEC                         223     0
  TEC (PT100)                 223     1
  TEC (KRYO)                  223     2

  ITC                         159     0

  PDA (1 channel)             107     0
  PDA (2 channel)             107     1
  PDA (1 channel, UFWD)       107     2
  PDA (2 channel, UFWD)       107     3

  LS (DIL)                    247     0
  LS (BFY)                    243     3
  LS (B-Type)                 249     3

  SLED                        243     7
  SLED (B-Type)               249     7

  WDM-CW                      243     2
  WDM-CW (B-Type)             249     2

  WDM-EA                      243     0
  WDM-EA (B-Type)             249     0

  WDM-DIR                     243     6
  WDM-DIR (B-Type)            249     6

  WDM-CCDM                    243     4
  WDM-CCDM (B-Type)           249     4

  OSW (1->8)                  227     0
  OSW (2->2)                  227     1
  OSW (1->2)                  227     2
  OSW (1->4)                  227     3

  WDM-CWDM                    249     9

  WDM-ITC                     249     8

  BBS                         249    10

     r    This control returns the type code of the active slot.

Note: You may pass VI_NULL if you don't need this value.     �    This control returns the identification string of the active slot.

Note:

The array must contain at least 21 elements ViChar[21]. You may pass VI_NULL if you don't need this value.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     u    This control returns the subtype code of the active slot.

Note: You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 1 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 2 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 3 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 4 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 5 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 6 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 7 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 8 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 9 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.     �    This control returns the option byte 10 of the active slot.

Note:

For detailed description of the option bytes see your users manual. You may pass VI_NULL if you don't need this value.        This control returns the serial number of the active slot. 
If a serial number query is not supported by the module a string like '0000-000' is returned.

Note:

The array must contain at least 9 elements ViChar[9]. You may pass VI_NULL if you don't need this value.   � =  �  P    Type Code                        q = � �  �    Identification String            0����  �    Status                           �   �  �    Instrument Handle                N = � �  P    Subtype Code                     � �  �  P    Option Byte 1                    � � � �  P    Option Byte 2                    Q � � �  P    Option Byte 3                     �J �  P    Option Byte 4                    � �� 	�  P    Option Byte 5                    � �  
�  P    Option Byte 6                    ] � � �  P    Option Byte 7                      � � �  P    Option Byte 8                    � �J �  P    Option Byte 9                    � �� �  P    Option Byte 10                    j =� �  n    Serial Number                      	            	            	               	            	            	            	            	            	            	            	            	            	            	            	            �    This function returns the revision numbers of the instrument driver and instrument firmware, and tells the user with which  instrument firmware this revision of the driver is compatible. 
     �    This control returns the Instrument Driver Software Revision.

Note:

The array must contain at least 256 elements ViChar[256]. You may pass VI_NULL if you don't need this value.     �    This control returns the Instrument Firmware Revision.

Note:

The array must contain at least 256 elements ViChar[256]. You may pass VI_NULL if you don't need this value.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   &L = 2 �  �    Instrument Driver Revision       ' =, �  �    Firmware Revision                '�����  �    Status                           (<   �  �    Instrument Handle                  	            	            	               7    This function sets the Answer Mode of the instrument.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     �    This control specifies if the instrument answers in Full Mode or in Value Mode.

Valid Range:
VI_OFF (0) - Full Mode (Default Value)
VI_ON  (1) - Value Mode

Note:

Use Value Mode if you want to increase speed.   *����  �    Status                           *�   �  �    Instrument Handle                +4 D 4 � �    Answer Mode                        	             "  Value Mode VI_ON Full Mode VI_OFF    ~    This function returns the Answer Mode of the instrument and synchronizes the instrument driver with the instrument settings.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None     9    This control returns the Answer Mode of the instrument.   -j����  �    Status                           -�   �  �    Instrument Handle                .� E� �  `    Answer Mode                        	               	               This function performs the following operations:
viClose (instrSession) and viClose (rmSession).

Note:

(1) The instrument must be reinitialized to use it again.

(2) If the instrument was programmed to answer in value mode by Pro8_init(...) it is reset to answer in full mode.     w    This control contains the status code returned by the function call.

For Status Codes see function <Error Message>.
     �    This control accepts the Instrument Handle returned by the Initialize function to select the desired instrument driver session.

Default Value:  None   0�����  �    Status                           1#   �  �    Instrument Handle                  	            ����         !   2             K.        init                                                                                                                                    ����         "w  $             K.        SetSlot                                                                                                                                 ����         $�  &<             K.        GetSlot                                                                                                                                 ����         &�  (�             K.        SetPort                                                                                                                                 ����         )�  +C             K.        GetPort                                                                                                                                 ����         +�  -�             K.        LdcSetMode                                                                                                                              ����         .�  0\             K.        LdcGetMode                                                                                                                              ����         1  3             K.        LdcSetLdPol                                                                                                                             ����         3�  5�             K.        LdcGetLdPol                                                                                                                             ����         6;  82             K.        LdcSetPdPol                                                                                                                             ����         9  :�             K.        LdcGetPdPol                                                                                                                             ����         ;`  =l             K.        LdcSetBias                                                                                                                              ����         >)  ?�             K.        LdcGetBias                                                                                                                              ����         @�  BP             K.        LdcSetTpSlot                                                                                                                            ����         C  D�             K.        LdcGetTpSlot                                                                                                                            ����         E�  G�             K.        LdcSetTempProt                                                                                                                          ����         H~  J,             K.        LdcGetTempProt                                                                                                                          ����         J�  L�             K.        LdcSetLdOutput                                                                                                                          ����         M�  O>             K.        LdcGetLdOutput                                                                                                                          ����         O�  R             K.        MlcSetMode                                                                                                                              ����         R�  T�             K.        MlcGetMode                                                                                                                              ����         Ub  W             K.        MlcSetRange                                                                                                                             ����         X>  Z             K.        MlcGetRange                                                                                                                             ����         Z�  \�             K.        MlcSetTpSlot                                                                                                                            ����         ]_  _m             K.        MlcGetTpSlot                                                                                                                            ����         `(  bk             K.        MlcSetTempProt                                                                                                                          ����         c(  d�             K.        MlcGetTempProt                                                                                                                          ����         e�  g�             K.        MlcSetLdOutput                                                                                                                          ����         h�  j^             K.        MlcGetLdOutput                                                                                                                          ����         k  nu             K.        TecSetSensor                                                                                                                            ����         o�  q8             K.        TecGetSensor                                                                                                                            ����         q�  s�             K.        TecSetIShare                                                                                                                            ����         t�  v              K.        TecGetIShare                                                                                                                            ����         v�  x�             K.        TecSetPtOutput                                                                                                                          ����         y�  {"             K.        TecGetPtOutput                                                                                                                          ����         {�  }�             K.        ItcSetMode                                                                                                                              ����         ~�  �;             K.        ItcGetMode                                                                                                                              ����         ��  ��             K.        ItcSetLdPol                                                                                                                             ����         ��  �_             K.        ItcGetLdPol                                                                                                                             ����         �  �             K.        ItcSetPdPol                                                                                                                             ����         ��  ��             K.        ItcGetPdPol                                                                                                                             ����         �?  �[             K.        ItcSetTempProt                                                                                                                          ����         �  ��             K.        ItcGetTempProt                                                                                                                          ����         ��  �u             K.        ItcSetLdOutput                                                                                                                          ����         �2  ��             K.        ItcGetLdOutput                                                                                                                          ����         ��  �a             K.        ItcSetSensor                                                                                                                            ����         �4  ��             K.        ItcGetSensor                                                                                                                            ����         ��  �f             K.        ItcSetIShare                                                                                                                            ����         �#  ��             K.        ItcGetIShare                                                                                                                            ����         �n  �Z             K.        ItcSetPtOutput                                                                                                                          ����         �  ��             K.        ItcGetPtOutput                                                                                                                          ����         �p  ��             K.        PdaSetPdPol                                                                                                                             ����         �m  �;             K.        PdaGetPdPol                                                                                                                             ����         ��  �2             K.        PdaSetBias                                                                                                                              ����         ��  ��             K.        PdaGetBias                                                                                                                              ����         ��  �`             K.        PdaSetRange                                                                                                                             ����         �:  ��             K.        PdaGetRange                                                                                                                             ����         ��  �D             K.        OswSetState                                                                                                                             ����         ��  ��             K.        OswGetState                                                                                                                             ����         �W  �>             K.        LsSetOutput                                                                                                                             ����         ��  ��             K.        LsGetOutput                                                                                                                             ����         �O  �(             K.        LsSetSyncMod                                                                                                                            ����         �x  ��             K.        LsGetSyncMod                                                                                                                            ����         �1  �             K.        SledSetOutput                                                                                                                           ����         ��  �n             K.        SledGetOutput                                                                                                                           ����         �)  �             K.        SledSetSyncMod                                                                                                                          ����         �R  ѽ             K.        SledGetSyncMod                                                                                                                          ����         �  ��             K.        WdmCwSetOutput                                                                                                                          ����         կ  �H             K.        WdmCwGetOutput                                                                                                                          ����         �  ��             K.        WdmCwSetSyncMod                                                                                                                         ����         �,  ޗ             K.        WdmCwGetSyncMod                                                                                                                         ����         ��  ��             K.        WdmCwSetLfMod                                                                                                                           ����         �  �             K.        WdmCwGetLfMod                                                                                                                           ����         ��  �             K.        WdmCwSetLfModType                                                                                                                       ����         ��  ��             K.        WdmCwGetLfModType                                                                                                                       ����         �  �T             K.        WdmEaSetCohCtrl                                                                                                                         ����         ��  ��             K.        WdmEaGetCohCtrl                                                                                                                         ����         ��  ��             K.        WdmEaSetOutput                                                                                                                          ����         �{  �             K.        WdmEaGetOutput                                                                                                                          ����         �� �             K.        WdmEaSetSyncMod                                                                                                                         ����        � c             K.        WdmEaGetSyncMod                                                                                                                         ����        � 	�             K.        WdmEaSetLfMod                                                                                                                           ����        
� c             K.        WdmEaGetLfMod                                                                                                                           ����        � O             K.        WdmEaSetLfModType                                                                                                                       ����        � �             K.        WdmEaGetLfModType                                                                                                                       ����        � �             K.        WdmEaSetHfMod                                                                                                                           ����         �             K.        WdmEaGetHfMod                                                                                                                           ����        � #             K.        WdmDirSetCohCtrl                                                                                                                        ����        $m 'G             K.        WdmDirGetCohCtrl                                                                                                                        ����        (� +�             K.        WdmDirSetModulation                                                                                                                     ����        ,� /m             K.        WdmDirGetModulation                                                                                                                     ����        0� 2�             K.        WdmDirSetOutput                                                                                                                         ����        3f 4�             K.        WdmDirGetOutput                                                                                                                         ����        5� 8�             K.        WdmDirSetSyncMod                                                                                                                        ����        9� <N             K.        WdmDirGetSyncMod                                                                                                                        ����        =� @�             K.        WdmDirSetHfMod                                                                                                                          ����        A� DB             K.        WdmDirGetHfMod                                                                                                                          ����        E� Hz             K.        WdmDirSetLfMod                                                                                                                          ����        I� LB             K.        WdmDirGetLfMod                                                                                                                          ����        M� Q.             K.        WdmDirSetLfModType                                                                                                                      ����        R� Uu             K.        WdmDirGetLfModType                                                                                                                      ����        V� X�             K.        WdmCcdmSetOutput                                                                                                                        ����        Yg [              K.        WdmCcdmGetOutput                                                                                                                        ����        [� ^�             K.        WdmCcdmSetSyncMod                                                                                                                       ����        _� bO             K.        WdmCcdmGetSyncMod                                                                                                                       ����        c� f�             K.        WdmCcdmSetLfMod                                                                                                                         ����        g� jO             K.        WdmCcdmGetLfMod                                                                                                                         ����        k� o;             K.        WdmCcdmSetLfModType                                                                                                                     ����        p� s�             K.        WdmCcdmGetLfModType                                                                                                                     ����        t� v�             K.        WdmCwdmSetOutput                                                                                                                        ����        wr y             K.        WdmCwdmGetOutput                                                                                                                        ����        y� {�             K.        WdmCwdmSetSyncMod                                                                                                                       ����        |� ~O             K.        WdmCwdmGetSyncMod                                                                                                                       ����        
 �8             K.        WdmCwdmSetLfMod                                                                                                                         ����        �� ��             K.        WdmCwdmGetLfMod                                                                                                                         ����        �l �N             K.        WdmCwdmSetLfModType                                                                                                                     ����        �7 �G             K.        WdmCwdmGetLfModType                                                                                                                     ����        � ��             K.        WdmItcSetOutput                                                                                                                         ����        �� �?             K.        WdmItcGetOutput                                                                                                                         ����        �� �             K.        WdmItcSetSyncMod                                                                                                                        ����        �� ��             K.        WdmItcGetSyncMod                                                                                                                        ����        �> �k             K.        WdmItcSetLfMod                                                                                                                          ����        �( ��             K.        WdmItcGetLfMod                                                                                                                          ����        �� ��             K.        WdmItcSetLfModType                                                                                                                      ����        �j �z             K.        WdmItcGetLfModType                                                                                                                      ����        �5 �             K.        BbsSetOutput                                                                                                                            ����        �� �Z             K.        BbsGetOutput                                                                                                                            ����        � �2             K.        BbsSetSyncMod                                                                                                                           ����        �� ��             K.        BbsGetSyncMod                                                                                                                           ����        �Y �             K.        GetDESR                                                                                                                                 ����        �� ��             K.        SetDESE                                                                                                                                 ����        �= �              K.        GetDESE                                                                                                                                 ����        �� ��             K.        GetDEC                                                                                                                                  ����        �� ��             K.        GetDEE                                                                                                                                  ����        �� �             K.        SetEDE                                                                                                                                  ����        � �4             K.        GetEDE                                                                                                                                  ����        �) ��             K.        GetBFC                                                                                                                                  ����        �� �V             K.        GetBFR                                                                                                                                  ����        � ��             K.        SetBFE                                                                                                                                  ����        �y �0             K.        GetBFE                                                                                                                                  ����        �� ʹ             K.        LdcSetCalibration                                                                                                                       ����        �o ͧ             K.        LdcGetCalibration                                                                                                                       ����        �� �x             K.        LdcSetLdCurrent                                                                                                                         ����        �. �Q             K.        LdcGetLdCurrent                                                                                                                         ����        ԋ �1             K.        LdcSetPdCurrent                                                                                                                         ����        �� �             K.        LdcGetPdCurrent                                                                                                                         ����        �F ��             K.        LdcSetPower                                                                                                                             ����        ܘ ޯ             K.        LdcGetPower                                                                                                                             ����        �� �             K.        LdcSetLdLimit                                                                                                                           ����        �_ �             K.        LdcGetLdLimit                                                                                                                           ����        � �o             K.        LdcSetPdLimit                                                                                                                           ����        �% �J             K.        LdcGetPdLimit                                                                                                                           ����        �u �1             K.        LdcSetPowerLimit                                                                                                                        ����        �� �             K.        LdcGetPowerLimit                                                                                                                        ����        �/ ��             K.        LdcGetLdLimitPoti                                                                                                                       ����        � �=             K.        LdcGetLdVoltage                                                                                                                         ����        �� ��             K.        MlcSetLdCurrent                                                                                                                         ����        �� ��             K.        MlcGetLdCurrent                                                                                                                         ����        � ��             K.        MlcSetPdCurrent                                                                                                                         ����        ��  �             K.        MlcGetPdCurrent                                                                                                                         ����        / 4             K.        MlcGetLdLimitPoti                                                                                                                       ����        � �             K.        TecSetThCalExp                                                                                                                          ����        	  �             K.        TecGetThCalExp                                                                                                                          ����        � �             K.        TecSetThCalSH                                                                                                                           ����        � �             K.        TecGetThCalSH                                                                                                                           ����        � =             K.        TecSetTemp                                                                                                                              ����        �              K.        TecGetTemp                                                                                                                              ����        B �             K.        TecSetRes                                                                                                                               ����        �  �             K.        TecGetRes                                                                                                                               ����        !� #�             K.        TecSetTempWin                                                                                                                           ����        $\ &~             K.        TecGetTempWin                                                                                                                           ����        '� )l             K.        TecSetResWin                                                                                                                            ����        *$ ,E             K.        TecGetResWin                                                                                                                            ����        -p /�             K.        TecSetPID                                                                                                                               ����        0� 3             K.        TecGetPID                                                                                                                               ����        4� 6�             K.        TecSetPtLimit                                                                                                                           ����        79 9V             K.        TecGetPtLimit                                                                                                                           ����        :� <2             K.        TecGetPtLimitPoti                                                                                                                       ����        <� >v             K.        TecGetPtCurrent                                                                                                                         ����        ?1 @�             K.        TecGetPtVoltage                                                                                                                         ����        Au CC             K.        ItcSetCalibration                                                                                                                       ����        C� F1             K.        ItcGetCalibration                                                                                                                       ����        G\ I             K.        ItcSetLdCurrent                                                                                                                         ����        I� K�             K.        ItcGetLdCurrent                                                                                                                         ����        M N�             K.        ItcSetPdCurrent                                                                                                                         ����        Oq Q�             K.        ItcGetPdCurrent                                                                                                                         ����        R� Tj             K.        ItcSetPower                                                                                                                             ����        U  W7             K.        ItcGetPower                                                                                                                             ����        Xq Z!             K.        ItcSetBiasVoltage                                                                                                                       ����        Z� \�             K.        ItcGetBiasVoltage                                                                                                                       ����        ^ _�             K.        ItcSetLdLimit                                                                                                                           ����        `� b�             K.        ItcGetLdLimit                                                                                                                           ����        c� e�             K.        ItcGetLdLimitPoti                                                                                                                       ����        fZ g�             K.        ItcGetLdVoltage                                                                                                                         ����        h� kX             K.        ItcSetThCalExp                                                                                                                          ����        l� o              K.        ItcGetThCalExp                                                                                                                          ����        p� sj             K.        ItcSetThCalSH                                                                                                                           ����        t� w�             K.        ItcGetThCalSH                                                                                                                           ����        y7 z�             K.        ItcSetTemp                                                                                                                              ����        {� }�             K.        ItcGetTemp                                                                                                                              ����        ~� �q             K.        ItcSetRes                                                                                                                               ����        �+ �>             K.        ItcGetRes                                                                                                                               ����        �x �9             K.        ItcSetTempWin                                                                                                                           ����        �� �             K.        ItcGetTempWin                                                                                                                           ����        �< ��             K.        ItcSetResWin                                                                                                                            ����        �� ��             K.        ItcGetResWin                                                                                                                            ����        � �             K.        ItcSetPID                                                                                                                               ����        �N ��             K.        ItcGetPID                                                                                                                               ����        �^ �             K.        ItcSetPtLimit                                                                                                                           ����        �� ��             K.        ItcGetPtLimit                                                                                                                           ����        � ��             K.        ItcGetPtCurrent                                                                                                                         ����        �X ��             K.        ItcGetPtVoltage                                                                                                                         ����        �� ��             K.        PdaSetCalibration                                                                                                                       ����        �Q ��             K.        PdaGetCalibration                                                                                                                       ����        �� ��             K.        PdaGetPdCurrent                                                                                                                         ����        �c �             K.        PdaGetPower                                                                                                                             ����        �� ��             K.        PdaSetBiasVoltage                                                                                                                       ����        �k ��             K.        PdaGetBiasVoltage                                                                                                                       ����        �� �             K.        PdaSetFwdCurr                                                                                                                           ����        �� �S             K.        PdaGetFwdCurr                                                                                                                           ����        �~ �b             K.        PdaGetFwdVoltage                                                                                                                        ����        � ��             K.        LsSetPowerdBm                                                                                                                           ����        �m �q             K.        LsGetPowerdBm                                                                                                                           ����        �� �2             K.        LsSetPowerW                                                                                                                             ����        �� ��             K.        LsGetPowerW                                                                                                                             ����        � ��             K.        LsSetTempDiff                                                                                                                           ����        �w ˏ             K.        LsGetTempDifference                                                                                                                     ����        ̺ �T             K.        SledSetPowerdBm                                                                                                                         ����        �
 �             K.        SledGetPowerdBm                                                                                                                         ����        �9 ��             K.        SledSetPowerW                                                                                                                           ����        ԅ և             K.        SledGetPowerW                                                                                                                           ����        ײ ڕ             K.        WdmCwSetCoherence                                                                                                                       ����        �� �3             K.        WdmCwGetCoherence                                                                                                                       ����        �� �             K.        WdmCwSetPowerdBm                                                                                                                        ����        �H �L             K.        WdmCwGetPowerdBm                                                                                                                        ����        �w �             K.        WdmCwSetPowerW                                                                                                                          ����        �� ��             K.        WdmCwGetPowerW                                                                                                                          ����        �� �             K.        WdmCwSetWavelength                                                                                                                      ����        �B �C             K.        WdmCwGetWavelength                                                                                                                      ����        �n �             K.        WdmCwSetFrequency                                                                                                                       ����        � ��             K.        WdmCwGetFrequency                                                                                                                       ����        �� �V             K.        WdmCwSetLfAmplitude                                                                                                                     ����        �� �x             K.        WdmCwGetLfAmplitude                                                                                                                     ����        �6 �             K.        WdmCwSetLfFrequency                                                                                                                     ����        � �             K.        WdmCwGetLfFrequency                                                                                                                     ����        � 
@             K.        WdmCwGetMaxHfVoltage                                                                                                                    ����        � ;             K.        WdmEaSetPowerdBm                                                                                                                        ����        � �             K.        WdmEaGetPowerdBm                                                                                                                        ����          �             K.        WdmEaSetPowerW                                                                                                                          ����        l n             K.        WdmEaGetPowerW                                                                                                                          ����        � 2             K.        WdmEaSetWavelength                                                                                                                      ����        � �             K.        WdmEaGetWavelength                                                                                                                      ����         �             K.        WdmEaSetFrequency                                                                                                                       ����        g  g             K.        WdmEaGetFrequency                                                                                                                       ����        !� #5             K.        WdmEaSetThreshold                                                                                                                       ����        #� %�             K.        WdmEaGetThreshold                                                                                                                       ����        '% )�             K.        WdmEaSetModVoltage                                                                                                                      ����        +, .R             K.        WdmEaGetModVoltage                                                                                                                      ����        0 2�             K.        WdmEaSetLfAmplitude                                                                                                                     ����        3� 6�             K.        WdmEaGetLfAmplitude                                                                                                                     ����        8d :�             K.        WdmEaSetLfFrequency                                                                                                                     ����        <" >�             K.        WdmEaGetLfFrequency                                                                                                                     ����        @� C-             K.        WdmEaSetHfAmplitude                                                                                                                     ����        Dv GU             K.        WdmEaGetHfAmplitude                                                                                                                     ����        I J�             K.        WdmDirSetPowerdBm                                                                                                                       ����        Kc Mg             K.        WdmDirGetPowerdBm                                                                                                                       ����        N� P%             K.        WdmDirGetAvPowerdBm                                                                                                                     ����        P� Rv             K.        WdmDirSetPowerW                                                                                                                         ����        S, U.             K.        WdmDirGetPowerW                                                                                                                         ����        VY W�             K.        WdmDirGetAvPowerW                                                                                                                       ����        X� Z>             K.        WdmDirSetWavelength                                                                                                                     ����        Z� \�             K.        WdmDirGetWavelength                                                                                                                     ����        ^# _�             K.        WdmDirSetFrequency                                                                                                                      ����        `s bs             K.        WdmDirGetFrequency                                                                                                                      ����        c� eA             K.        WdmDirSetThreshold                                                                                                                      ����        e� h             K.        WdmDirGetThreshold                                                                                                                      ����        i1 k�             K.        WdmDirSetModCurrent                                                                                                                     ����        m% p7             K.        WdmDirGetModCurrent                                                                                                                     ����        q� to             K.        WdmDirSetHfAmplitude                                                                                                                    ����        u� x�             K.        WdmDirGetHfAmplitude                                                                                                                    ����        zU |�             K.        WdmDirSetLfAmplitude                                                                                                                    ����        ~ ��             K.        WdmDirGetLfAmplitude                                                                                                                    ����        �� �             K.        WdmDirSetLfFrequency                                                                                                                    ����        �` �:             K.        WdmDirGetLfFrequency                                                                                                                    ����        �� ��             K.        WdmCcdmSetCoherence                                                                                                                     ����        �1 ��             K.        WdmCcdmGetCoherence                                                                                                                     ����        �J ��             K.        WdmCcdmSetPowerdBm                                                                                                                      ����        �� ��             K.        WdmCcdmGetPowerdBm                                                                                                                      ����        �� �~             K.        WdmCcdmSetPowerW                                                                                                                        ����        �4 �F             K.        WdmCcdmGetPowerW                                                                                                                        ����        �� �             K.        WdmCcdmSetWavelength                                                                                                                    ����        �� ��             K.        WdmCcdmGetWavelength                                                                                                                    ����        �� ��             K.        WdmCcdmSetFrequency                                                                                                                     ����        �N �N             K.        WdmCcdmGetFrequency                                                                                                                     ����        �y ��             K.        WdmCcdmSetLfAmplitude                                                                                                                   ����        �/ �             K.        WdmCcdmGetLfAmplitude                                                                                                                   ����        �� �8             K.        WdmCcdmSetLfFrequency                                                                                                                   ����        �� �^             K.        WdmCcdmGetLfFrequency                                                                                                                   ����        � ��             K.        WdmCcdmGetMaxHfVoltage                                                                                                                  ����        �1 ��             K.        WdmCwdmSetPowerdBm                                                                                                                      ����        �� Å             K.        WdmCwdmGetPowerdBm                                                                                                                      ����        İ �F             K.        WdmCwdmSetPowerW                                                                                                                        ����        �� ��             K.        WdmCwdmGetPowerW                                                                                                                        ����        �) ��             K.        WdmCwdmSetTempDiff                                                                                                                      ����        ̋ Σ             K.        WdmCwdmGetTempDifference                                                                                                                ����        �� �N             K.        WdmCwdmGetWavelength                                                                                                                    ����        �	 ӈ             K.        WdmCwdmGetFrequency                                                                                                                     ����        �C ��             K.        WdmCwdmSetLfAmplitude                                                                                                                   ����        ֩ ��             K.        WdmCwdmGetLfAmplitude                                                                                                                   ����        �� ۥ             K.        WdmCwdmSetLfFrequency                                                                                                                   ����        �^ �{             K.        WdmCwdmGetLfFrequency                                                                                                                   ����        ߦ �L             K.        WdmItcSetLdCurrent                                                                                                                      ����        � �             K.        WdmItcGetLdCurrent                                                                                                                      ����        �? ��             K.        WdmItcSetLdLimit                                                                                                                        ����        � ��             K.        WdmItcGetLdLimit                                                                                                                        ����        � �             K.        WdmItcSetTemp                                                                                                                           ����        �Y �`             K.        WdmItcGetTemp                                                                                                                           ����        �� �2             K.        WdmItcSetRes                                                                                                                            ����        �� �
             K.        WdmItcGetRes                                                                                                                            ����        �5 ��             K.        WdmItcSetLfAmplitude                                                                                                                    ����        �� ��             K.        WdmItcGetLfAmplitude                                                                                                                    ����        �� ��             K.        WdmItcSetLfFrequency                                                                                                                    ����        �P  m             K.        WdmItcGetLfFrequency                                                                                                                    ����        �              K.        BbsGetPowerdBm                                                                                                                          ����        � [             K.        BbsGetPowerW                                                                                                                            ����         R             K.        ElchSetParameters                                                                                                                       ����        	B 2             K.        ElchGetParameters                                                                                                                       ����        . F             K.        ElchRun                                                                                                                                 ����        ? �             K.        ElchGetMeasVal                                                                                                                          ����        F |             K.        LdcSetElchSetVal                                                                                                                        ����        � �             K.        LdcGetElchSetVal                                                                                                                        ����         � #�             K.        LdcSetElchMeasVal                                                                                                                       ����        %) '�             K.        LdcGetElchMeasVal                                                                                                                       ����        )3 ,i             K.        MlcSetElchSetVal                                                                                                                        ����        -� 0�             K.        MlcGetElchSetVal                                                                                                                        ����        1� 4�             K.        MlcSetElchMeasVal                                                                                                                       ����        5� 8�             K.        MlcGetElchMeasVal                                                                                                                       ����        9� <�             K.        TecSetElchMeasVal                                                                                                                       ����        > @�             K.        TecGetElchMeasVal                                                                                                                       ����        B9 E�             K.        ItcSetElchSetVal                                                                                                                        ����        F� I�             K.        ItcGetElchSetVal                                                                                                                        ����        KI N�             K.        ItcSetElchMeasVal                                                                                                                       ����        O� S             K.        ItcGetElchMeasVal                                                                                                                       ����        T� W�             K.        PdaSetElchSetVal                                                                                                                        ����        X� [�             K.        PdaGetElchSetVal                                                                                                                        ����        \� _�             K.        PdaSetElchMeasVal                                                                                                                       ����        `� c�             K.        PdaGetElchMeasVal                                                                                                                       ����        d� g�             K.        LsSetElchSetVal                                                                                                                         ����        i k�             K.        LsGetElchSetVal                                                                                                                         ����        m) pR             K.        SledSetElchSetVal                                                                                                                       ����        q� tU             K.        SledGetElchSetVal                                                                                                                       ����        u� x�             K.        CwSetElchSetVal                                                                                                                         ����        z( |�             K.        CwGetElchSetVal                                                                                                                         ����        ~5 �^             K.        EaSetElchSetVal                                                                                                                         ����        �� �a             K.        EaGetElchSetVal                                                                                                                         ����        �� ��             K.        DirSetElchSetVal                                                                                                                        ����        �4 ��             K.        DirGetElchSetVal                                                                                                                        ����        �A �j             K.        CcdmSetElchSetVal                                                                                                                       ����        �� �m             K.        CcdmGetElchSetVal                                                                                                                       ����        �� ��             K.        CcdmSetElchMeasVal                                                                                                                      ����        �� �m             K.        CcdmGetElchMeasVal                                                                                                                      ����        �� ��             K.        CwdmSetElchSetVal                                                                                                                       ����        �� ��             K.        CwdmGetElchSetVal                                                                                                                       ����        � �             K.        writeInstrData                                                                                                                          ����        �� �{             K.        readInstrData                                                                                                                           ����        �� �7             K.        WaitForFinishedBit                                                                                                                      ����        �� ��             K.        reset                                                                                                                                   ����        �o ��             K.        selfTest                                                                                                                                ����        �E ��             K.        errorQuery                                                                                                                              ����        �� �p             K.        errorMessage                                                                                                                            ����        �l �             K.        identificationQuery                                                                                                                     ����        �	 �<             K.        GetSlotConfiguration                                                                                                                    ����        �� .             K.        SlotDataQuery                                                                                                                           ����        � !~             K.        SlotDataQueryEx                                                                                                                         ����        %� (�             K.        revisionQuery                                                                                                                           ����        )� ,             K.        SetAnswerMode                                                                                                                           ����        ,� .�             K.        GetAnswerMode                                                                                                                           ����        /� 1�             K.        close                                                                                                                                         �                                                                                     �Initialize                                                                          �Configuration Functions                                                              �Set Slot                                                                             �Get Slot                                                                             �Set Port                                                                             �Get Port                                                                            iLDC Functions                                                                        �LDC Set Mode                                                                         �LDC Get Mode                                                                         �LDC Set Laser Polarity                                                               �LDC Get Laser Polarity                                                               �LDC Set Photo Diode Polarity                                                         �LDC Get Photo Diode Polarity                                                         �LDC Set Photo Diode Bias                                                             �LDC Get Photo Diode Bias                                                             �LDC Set Temp. Protection Slot                                                        �LDC Get Temp. Protection Slot                                                        �LDC Set Temperature Protection                                                       �LDC Get Temperature Protection                                                       �LDC Set Laser Output                                                                 �LDC Get Laser Output                                                                �MLC Functions                                                                        �MLC Set Mode                                                                         �MLC Get Mode                                                                         �MLC Set Range                                                                        �MLC Get Range                                                                        �MLC Set Temp. Protection Slot                                                        �MLC Get Temp. Protection Slot                                                        �MLC Set Temperature Protection                                                       �MLC Get Temperature Protection                                                       �MLC Set Laser Output                                                                 �MLC Get Laser Output                                                                �TEC Functions                                                                        �TEC Set Sensor                                                                       �TEC Get Sensor                                                                       �TEC Set I-Share                                                                      �TEC Get I-Share                                                                      �TEC Set Peltier Output                                                               �TEC Get Peltier Output                                                              ITC Functions                                                                        �ITC Set Mode                                                                         �ITC Get Mode                                                                         �ITC Set Laser Polarity                                                               �ITC Get Laser Polarity                                                               �ITC Set Photo Diode Polarity                                                         �ITC Get Photo Diode Polarity                                                         �ITC Set Temperature Protection                                                       �ITC Get Temperature Protection                                                       �ITC Set Laser Output                                                                 �ITC Get Laser Output                                                                 �ITC Set Sensor                                                                       �ITC Get Sensor                                                                       �ITC Set I-Share                                                                      �ITC Get I-Share                                                                      �ITC Set Peltier Output                                                               �ITC Get Peltier Output                                                              MPDA Functions                                                                        �PDA Set Photo Diode Polarity                                                         �PDA Get Photo Diode Polarity                                                         �PDA Set Photo Diode Bias                                                             �PDA Get Photo Diode Bias                                                             �PDA Set Range                                                                        �PDA Get Range                                                                       �OSW Functions                                                                        �OSW Set State                                                                        �OSW Get State                                                                       �LS Functions                                                                         �LS Set Output                                                                        �LS Get Output                                                                        �LS Set Synchronous Modulation                                                        �LS Get Synchronous Modulation                                                       �SLED Functions                                                                       �SLED Set Output                                                                      �SLED Get Output                                                                      �SLED Set Synchronous Modulation                                                      �SLED Get Synchronous Modulation                                                     1WDM-CW Functions                                                                     �CW Set Output                                                                        �CW Get Output                                                                        �CW Set Synchronous Modulation                                                        �CW Get Synchronous Modulation                                                        �CW Set LF Modulation                                                                 �CW Get LF Modulation                                                                 �CW Set LF Modulation Type                                                            �CW Get LF Modulation Type                                                           mWDM-EA Functions                                                                     �EA Set Coherence Control                                                             �EA Get Coherence Control                                                             �EA Set Output                                                                        �EA Get Output                                                                        �EA Set Synchronous Modulation                                                        �EA Get Synchronous Modulation                                                        �EA Set LF Modulation                                                                 �EA Get LF Modulation                                                                 �EA Set LF Modulation Type                                                            �EA Get LF Modulation Type                                                            �EA Set HF Modulation                                                                 �EA Get HF Modulation                                                                �WDM-DIR Functions                                                                    �DIR Set Coherence Control                                                            �DIR Get Coherence Control                                                            �DIR Set Modulation                                                                   �DIR Get Modulation                                                                   �DIR Set Output                                                                       �DIR Get Output                                                                       �DIR Set Synchronous Modulation                                                       �DIR Get Synchronous Modulation                                                       �DIR Set HF Modulation                                                                �DIR Get HF Modulation                                                                �DIR Set LF Modulation                                                                �DIR Get LF Modulation                                                                �DIR Set LF Modulation Type                                                           �DIR Get LF Modulation Type                                                          �WDM-CCDM Functions                                                                   �CCDM Set Output                                                                      �CCDM Get Output                                                                      �CCDM Set Synchronous Modulation                                                      �CCDM Get Synchronous Modulation                                                      �CCDM Set LF Modulation                                                               �CCDM Get LF Modulation                                                               �CCDM Set LF Modulation Type                                                          �CCDM Get LF Modulation Type                                                         	$WDM-CWDM Functions                                                                   �CWDM Set Output                                                                      �CWDM Get Output                                                                      �CWDM Set Synchronous Modulation                                                      �CWDM Get Synchronous Modulation                                                      �CWDM Set LF Modulation                                                               �CWDM Get LF Modulation                                                               �CWDM Set LF Modulation Type                                                          �CWDM Get LF Modulation Type                                                         	bWDM-ITC Functions                                                                    �WDM-ITC Set Output                                                                   �WDM-ITC Get Output                                                                   �WDM-ITC Set Sync. Modulation                                                         �WDM-ITC Get Sync. Modulation                                                         �WDM-ITC Set LF Modulation                                                            �WDM-ITC Get LF Modulation                                                            �WDM-ITC Set LF Modulation Type                                                       �WDM-ITC Get LF Modulation Type                                                      	�BBS Functions                                                                        �BBS Set Output                                                                       �BBS Get Output                                                                       �BBS Set Synchronous Modulation                                                       �BBS Get Synchronous Modulation                                                      	�Status Functions                                                                     �Get Dev Error Summary Register                                                       �Set Dev Error Sum. Enable Reg.                                                       �Get Dev Error Sum. Enable Reg.                                                       �Get Device Error Cond. Register                                                      �Get Device Error Event Register                                                      �Set Dev Error Event Enable Reg.                                                      �Get Dev Error Event Enable Reg.                                                      �Get Block Function Cond. Reg.                                                        �Get Block Function Event Reg.                                                        �Set Block Function Enable Reg.                                                       �Get Block Function Enable Reg.                                                      
<Data Functions                                                                      
�LDC Functions                                                                        �LDC Set Calibration Factor                                                           �LDC Get Calibration Factor                                                           �LDC Set Laser Current                                                                �LDC Get Laser Current                                                                �LDC Set Photo Diode Current                                                          �LDC Get Photo Diode Current                                                          �LDC Set Optical Power                                                                �LDC Get Optical Power                                                                �LDC Set Laser Diode Limit Curr.                                                      �LDC Get Laser Diode Limit Curr.                                                      �LDC Set Photo Diode Limit Curr.                                                      �LDC Get Photo Diode Limit Curr.                                                      �LDC Set Optical Power Limit                                                          �LDC Get Optical Power Limit                                                          �LDC Get LD Limit Current (Poti)                                                      �LDC Get Laser Voltage                                                               
�MLC Functions                                                                        �MLC Set Laser Current                                                                �MLC Get Laser Current                                                                �MLC Set Photo Diode Current                                                          �MLC Get Photo Diode Current                                                          �MLC Get LD Limit Current (Poti)                                                     TEC Functions                                                                        �TEC Set Therm Calibration (Exp)                                                      �TEC Get Therm Calibration (Exp)                                                      �TEC Set Therm Calibration (SH)                                                       �TEC Get Therm Calibration (SH)                                                       �TEC Set Temperature                                                                  �TEC Get Temperature                                                                  �TEC Set Resistance                                                                   �TEC Get Resistance                                                                   �TEC Set Temperature Window                                                           �TEC Get Temperature Window                                                           �TEC Set Resistance Window                                                            �TEC Get Resistance Window                                                            �TEC Set PID Shares                                                                   �TEC Get PID Shares                                                                   �TEC Set Peltier Limit Current                                                        �TEC Get Peltier Limit Current                                                        �TEC Get Peltier Lim Cur (Poti)                                                       �TEC Get Peltier Current                                                              �TEC Get Peltier Voltage                                                             fITC Functions                                                                        �ITC Set Calibration Factor                                                           �ITC Get Calibration Factor                                                           �ITC Set Laser Current                                                                �ITC Get Laser Current                                                                �ITC Set Photo Diode Current                                                          �ITC Get Photo Diode Current                                                          �ITC Set Optical Power                                                                �ITC Get Optical Power                                                                �ITC Set Bias Voltage                                                                 �ITC Get Bias Voltage                                                                 �ITC Set Laser Diode Limit Curr.                                                      �ITC Get Laser Diode Limit Curr.                                                      �ITC Get LD Limit Current (Poti)                                                      �ITC Get Laser Voltage                                                                �ITC Set Therm Calibration (Exp)                                                      �ITC Get Therm Calibration (Exp)                                                      �ITC Set Therm Calibration (SH)                                                       �ITC Get Therm Calibration (SH)                                                       �ITC Set Temperature                                                                  �ITC Get Temperature                                                                  �ITC Set Resistance                                                                   �ITC Get Resistance                                                                   �ITC Set Temperature Window                                                           �ITC Get Temperature Window                                                           �ITC Set Resistance Window                                                            �ITC Get Resistance Window                                                            �ITC Set PID Shares                                                                   �ITC Get PID Shares                                                                   �ITC Set Peltier Limit Current                                                        �ITC Get Peltier Limit Current                                                        �ITC Get Peltier Current                                                              �ITC Get Peltier Voltage                                                             �PDA Functions                                                                        �PDA Set Calibration Factor                                                           �PDA Get Calibration Factor                                                           �PDA Get Photo Diode Current                                                          �PDA Get Optical Power                                                                �PDA Set Bias Voltage                                                                 �PDA Get Bias Voltage                                                                 �PDA Set Forward Current                                                              �PDA Get Forward Current                                                              �PDA Get Forward Voltage                                                             �LS Functions                                                                         �LS Set Power (dBm)                                                                   �LS Get Power (dBm)                                                                   �LS Set Power (W)                                                                     �LS Get Power (W)                                                                     �LS Set Temperature Difference                                                        �LS Get Temperature Difference                                                       CSLED Functions                                                                       �SLED Set Power (dBm)                                                                 �SLED Get Power (dBm)                                                                 �SLED Set Power (W)                                                                   �SLED Get Power (W)                                                                  �WDM-CW Functions                                                                     �CW Set Coherence                                                                     �CW Get Coherence                                                                     �CW Set Power (dBm)                                                                   �CW Get Power (dBm)                                                                   �CW Set Power (W)                                                                     �CW Get Power (W)                                                                     �CW Set Wavelength                                                                    �CW Get Wavelength                                                                    �CW Set Frequency                                                                     �CW Get Frequency                                                                     �CW Set LF Amplitude                                                                  �CW Get LF Amplitude                                                                  �CW Set LF Frequency                                                                  �CW Get LF Frequency                                                                  �CW Get Max HF Voltage                                                               �WDM-EA Functions                                                                     �EA Set Power (dBm)                                                                   �EA Get Power (dBm)                                                                   �EA Set Power (W)                                                                     �EA Get Power (W)                                                                     �EA Set Wavelength                                                                    �EA Get Wavelength                                                                    �EA Set Frequency                                                                     �EA Get Frequency                                                                     �EA Set ECL Threshold                                                                 �EA Get ECL Threshold                                                                 �EA Set Modulation Voltage                                                            �EA Get Modulation Voltage                                                            �EA Set LF Amplitude                                                                  �EA Get LF Amplitude                                                                  �EA Set LF Frequency                                                                  �EA Get LF Frequency                                                                  �EA Set HF Amplitude                                                                  �EA Get HF Amplitude                                                                 (WDM-DIR Functions                                                                    �DIR Set Power (dBm)                                                                  �DIR Get Power (dBm)                                                                  �DIR Get Average Power (dBm)                                                          �DIR Set Power (W)                                                                    �DIR Get Power (W)                                                                    �DIR Get Average Power (W)                                                            �DIR Set Wavelength                                                                   �DIR Get Wavelength                                                                   �DIR Set Frequency                                                                    �DIR Get Frequency                                                                    �DIR Set ECL Threshold                                                                �DIR Get ECL Threshold                                                                �DIR Set Modulation Current                                                           �DIR Get Modulation Current                                                           �DIR Set HF Amplitude                                                                 �DIR Get HF Amplitude                                                                 �DIR Set LF Amplitude                                                                 �DIR Get LF Amplitude                                                                 �DIR Set LF Frequency                                                                 �DIR Get LF Frequency                                                                vWDM-CCDM Functions                                                                   �CCDM Set Coherence                                                                   �CCDM Get Coherence                                                                   �CCDM Set Power (dBm)                                                                 �CCDM Get Power (dBm)                                                                 �CCDM Set Power (W)                                                                   �CCDM Get Power (W)                                                                   �CCDM Set Wavelength                                                                  �CCDM Get Wavelength                                                                  �CCDM Set Frequency                                                                   �CCDM Get Frequency                                                                   �CCDM Set LF Amplitude                                                                �CCDM Get LF Amplitude                                                                �CCDM Set LF Frequency                                                                �CCDM Get LF Frequency                                                                �CCDM Get Max HF Voltage                                                             �WDM-CWDM Functions                                                                   �CWDM Set Power (dBm)                                                                 �CWDM Get Power (dBm)                                                                 �CWDM Set Power (W)                                                                   �CWDM Get Power (W)                                                                   �CWDM Set Temperature Difference                                                      �CWDM Get Temperature Difference                                                      �CWDM Get Wavelength                                                                  �CWDM Get Frequency                                                                   �CWDM Set LF Amplitude                                                                �CWDM Get LF Amplitude                                                                �CWDM Set LF Frequency                                                                �CWDM Get LF Frequency                                                               WDM-ITC Functions                                                                    �WDM-ITC Set Laser Current                                                            �WDM-ITC Get Laser Current                                                            �WDM-ITC Set LD Limit Current                                                         �WDM-ITC Get LD Limit Current                                                         �WDM-ITC Set TEC Temperature                                                          �WDM-ITC Get TEC Temperature                                                          �WDM-ITC Set TEC Resistance                                                           �WDM-ITC Get TEC Resistance                                                           �WDM-ITC Set LF Amplitude                                                             �WDM-ITC Get LF Amplitude                                                             �WDM-ITC Set LF Frequency                                                             �WDM-ITC Get LF Frequency                                                            bBBS Functions                                                                        �BBS Get Power (dBm)                                                                  �BBS Get Power (W)                                                                   �Electrical Characterisation                                                          �Set ELCH Parameters                                                                  �Get ELCH Parameters                                                                  �Run Electrical Characterisation                                                      �Get ELCH Measurement Values                                                         �LDC Functions                                                                        �LDC Set ELCH Set Values                                                              �LDC Get ELCH Set Values                                                              �LDC Set ELCH Measurement Value                                                       �LDC Get ELCH Measurement Value                                                      ]MLC Functions                                                                        �MLC Set ELCH Set Values                                                              �MLC Get ELCH Set Values                                                              �MLC Set ELCH Measurement Value                                                       �MLC Get ELCH Measurement Value                                                      �TEC Functions                                                                        �TEC Set ELCH Measurement Value                                                       �TEC Get ELCH Measurement Value                                                      ITC Functions                                                                        �ITC Set ELCH Set Values                                                              �ITC Get ELCH Set Values                                                              �ITC Set ELCH Measurement Value                                                       �ITC Get ELCH Measurement Value                                                      }PDA Functions                                                                        �PDA Set ELCH Set Values                                                              �PDA Get ELCH Set Values                                                              �PDA Set ELCH Measurement Value                                                       �PDA Get ELCH Measurement Value                                                      �LS Functions                                                                         �LS Set ELCH Set Values                                                               �LS Get ELCH Set Values                                                              <SLED Functions                                                                       �SLED Set ELCH Set Values                                                             �SLED Get ELCH Set Values                                                            �WDM-CW Functions                                                                     �CW Set ELCH Set Values                                                               �CW Get ELCH Set Values                                                               WDM-EA Functions                                                                     �EA Set ELCH Set Values                                                               �EA Get ELCH Set Values                                                              cWDM-DIR Functions                                                                    �DIR Set ELCH Set Values                                                              �DIR Get ELCH Set Values                                                             �WDM-CCDM Functions                                                                   �CCDM Set ELCH Set Values                                                             �CCDM Get ELCH Set Values                                                             �CCDM Set ELCH Measurement Value                                                      �CCDM Get ELCH Measurement Value                                                     ,WDM-CWDM Functions                                                                   �CWDM Set ELCH Set Values                                                             �CWDM Get ELCH Set Values                                                            �Utility Functions                                                                    �Write To Instrument                                                                  �Read Instrument Data                                                                 �Wait for Finished Bit                                                                �Reset                                                                                �Self-Test                                                                            �Error-Query                                                                          �Error Message                                                                        �Identification Query                                                                 �Get Slot Configuration                                                               �Slot Data Query                                                                      �Slot Data Query Extended                                                             �Revision Query                                                                       �Set Answer Mode                                                                      �Get Answer Mode                                                                      �Close                                                                           