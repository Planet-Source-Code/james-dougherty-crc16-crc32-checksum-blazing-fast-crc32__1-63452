//::|����������������������������������������������������������������������������������������|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|��|						~ A R I E L   P R O D U C T I O N S ~                     |��|::
//::|��|                               ~ ALL RIGHTS RESERVED ~                            |��|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|��| ~ PROGRAM DATA ~													      /-----/ |��|::
//::|��|							            								/-----/ | |��|::
//::|��| PROGRAMMER:: James Dougherty											| |   | | |��|::
//::|��| COPYRIGHT :: �2005 Ariel Productions									| |   | | |��|::
//::|��| TYPE      :: Checksum Library											| /---|-/ |��|::
//::|��|																		/-----/   |��|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|��| ~ SOURCE DATA ~																  |��|::
//::|��|																				  |��|::
//::|��| FILENAME :: Main.h																  |��|::
//::|��| VERSION  :: 1.0																  |��|::
//::|��|																				  |��|::
//::|��| HISTORY DATA																	  |��|::
//::|��| | 																				  |��|::
//::|��| |-N/A																			  |��|::
//::|��| |																				  |��|::
//::|��|																				  |��|::
//::|��| BUGS																			  |��|::
//::|��| |																				  |��|::
//::|��| |-N/A																			  |��|::
//::|��| |																				  |��|::
//::|��|																				  |��|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|����������������������������������������������������������������������������������������|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|��| This program is Copyright �2005 Ariel Productions (James Dougherty). This		  |��|::
//::|��| program is not in the public domain, therefore, it is not open source and all	  |��|::
//::|��| copyrights remain intact. This program constitutes proprietary information and   |��|::
//::|��| trade secrets of Ariel Productions, Ashland, Ohio. This program or any part of   |��|::
//::|��| this program may not be copied, sold, rented, leased, given, assigned, or		  |��|::
//::|��| otherwise made available to any other individual or organization without the     |��|::
//::|��| written consent of Ariel Productions. Also, no part of this unpublished work may |��|::
//::|��| be reproduced, transmitted, or stored in a retrieval system. Nor can this		  |��|::
//::|��| program be translated into any human or computer language in any form or by any  |��|::
//::|��| means electronically, mechanically, magnetically, optically, chemically, manual  |��|::
//::|��| or otherwise without the written permission of the copyright owner				  |��|::
//::|��| (Ariel Productions). Contact information is listed below for more information.   |��|::
//::|��|																				  |��|::
//::|��| Ariel Productions																  |��|::
//::|��| James Dougherty																  |��|::
//::|��| arielproductions@zoominternet.net												  |��|::
//::|��|																				  |��|::
//::|�� ---------------------------------------------------------------------------------- ��|::
//::|����������������������������������������������������������������������������������������|::

#ifndef MAIN_H
#define MAIN_H
#include "AP_CRC16.h"
#include "AP_CRC32.h"

APCRC16 g_APCRC16; //--CRC16 Class
APCRC32 g_APCRC32; //--CRC32 Class

//--CRC16 Prototypes
APAPI APulong APSTDCALL AP_ComputeCRC16_String(LPCTSTR Buffer, APushort& CRC16, CRC16METHOD Method);
APAPI APulong APSTDCALL AP_ComputeCRC16_File(LPCTSTR Filename, APushort& CRC16, CRC16METHOD Method);
APAPI APulong APSTDCALL AP_ComputeCRC16_ByteArray(const APuchar* Bytes, APlong Length, APushort& CRC16, CRC16METHOD Method);

//--CRC32 Prototypes
APAPI APulong APSTDCALL AP_ComputeCRC32_String(LPCTSTR Buffer, APulong& CRC32, CRC32METHOD Method);
APAPI APulong APSTDCALL AP_ComputeCRC32_File(LPCTSTR Filename, APulong& CRC32, CRC32METHOD Method);
APAPI APulong APSTDCALL AP_ComputeCRC32_ByteArray(const APuchar* Bytes, APlong Length, APulong& CRC32, CRC32METHOD Method);
#endif //--MAIN_H