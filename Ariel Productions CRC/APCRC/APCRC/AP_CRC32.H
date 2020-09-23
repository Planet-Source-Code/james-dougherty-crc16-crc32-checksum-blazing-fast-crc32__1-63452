//::|сссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сс|						~ A R I E L   P R O D U C T I O N S ~                     |сс|::
//::|сс|                               ~ ALL RIGHTS RESERVED ~                            |сс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сс| ~ PROGRAM DATA ~													      /-----/ |сс|::
//::|сс|							            								/-----/ | |сс|::
//::|сс| PROGRAMMER:: James Dougherty											| |   | | |сс|::
//::|сс| COPYRIGHT :: ©2005 Ariel Productions									| |   | | |сс|::
//::|сс| TYPE      :: Checksum Library											| /---|-/ |сс|::
//::|сс|																		/-----/   |сс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сс| ~ SOURCE DATA ~																  |сс|::
//::|сс|																				  |сс|::
//::|сс| FILENAME :: AP_CRC32.h															  |сс|::
//::|сс| VERSION  :: 1.0																  |сс|::
//::|сс|																				  |сс|::
//::|сс| HISTORY DATA																	  |сс|::
//::|сс| | 																				  |сс|::
//::|сс| |-N/A																			  |сс|::
//::|сс| |																				  |сс|::
//::|сс|																				  |сс|::
//::|сс| BUGS																			  |сс|::
//::|сс| |																				  |сс|::
//::|сс| |-N/A																			  |сс|::
//::|сс| |																				  |сс|::
//::|сс|																				  |сс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сс| This program is Copyright ©2005 Ariel Productions (James Dougherty). This		  |сс|::
//::|сс| program is not in the public domain, therefore, it is not open source and all	  |сс|::
//::|сс| copyrights remain intact. This program constitutes proprietary information and   |сс|::
//::|сс| trade secrets of Ariel Productions, Ashland, Ohio. This program or any part of   |сс|::
//::|сс| this program may not be copied, sold, rented, leased, given, assigned, or		  |сс|::
//::|сс| otherwise made available to any other individual or organization without the     |сс|::
//::|сс| written consent of Ariel Productions. Also, no part of this unpublished work may |сс|::
//::|сс| be reproduced, transmitted, or stored in a retrieval system. Nor can this		  |сс|::
//::|сс| program be translated into any human or computer language in any form or by any  |сс|::
//::|сс| means electronically, mechanically, magnetically, optically, chemically, manual  |сс|::
//::|сс| or otherwise without the written permission of the copyright owner				  |сс|::
//::|сс| (Ariel Productions). Contact information is listed below for more information.   |сс|::
//::|сс|																				  |сс|::
//::|сс| Ariel Productions																  |сс|::
//::|сс| James Dougherty																  |сс|::
//::|сс| arielproductions@zoominternet.net												  |сс|::
//::|сс|																				  |сс|::
//::|сс ---------------------------------------------------------------------------------- сс|::
//::|сссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссссс|::

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