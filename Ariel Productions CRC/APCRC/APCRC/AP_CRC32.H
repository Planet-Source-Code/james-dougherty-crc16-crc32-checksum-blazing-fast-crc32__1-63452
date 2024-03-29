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
//::|��| FILENAME :: AP_CRC32.h															  |��|::
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

#ifndef AP_CRC32_H
#define AP_CRC32_H
#include "AP_Definition.h"

enum CRC32METHOD
{
	CRC32M_STATIC  = 0x01,
	CRC32M_DYNAMIC = 0x02
};

class APCRC32
{
protected:
	CRC32METHOD    m_Method;
	APulong*       m_CRC32DTable;
	static APulong m_CRC32STable[256];

protected:
	APDINLINE APvoid ComputeCRC32(const APuchar Byte, APulong& CRC32) const;

public:
	APCRC32();
	virtual ~APCRC32();

public:
	APvoid InitializeCRC32System(CRC32METHOD Method = CRC32M_DYNAMIC);
	APvoid CleanupCRC32System(APvoid);

public:
	APulong ComputeCRC32_String(LPCTSTR Buffer, APulong& CRC32);
	APulong ComputeCRC32_File(LPCTSTR Filename, APulong& CRC32);
	APulong ComputeCRC32_ByteArray(const APuchar* Bytes, APlong Length, APulong& CRC32);
};

#endif //--AP_CRC32_H