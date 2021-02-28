#ifndef C_CRC32_H
#define C_CRC32_H
#include "stdio.h"
class CCRC32
{
private:
    CCRC32()
    {
        Init_CRC32_Table();
    }
public:
    ~CCRC32() {};
private:
    static CCRC32* m_instance;

public:
    static CCRC32* GetInstance()
    {
        if (m_instance == NULL)
        {
            //锁
            if (m_instance == NULL)
            {
                m_instance = new CCRC32();
                static CGarhuishou cl;
            }
            //放锁
        }
        return m_instance;
    }
    class CGarhuishou
    {
    public:
        ~CGarhuishou()
        {
            if (CCRC32::m_instance)
            {
                delete CCRC32::m_instance;
                CCRC32::m_instance = NULL;
            }
        }
    };
    //-------
public:

    void  Init_CRC32_Table();
    //unsigned long Reflect(unsigned long ref, char ch); // Reflects CRC bits in the lookup table
    unsigned int Reflect(unsigned int ref, char ch);

    //int   Get_CRC(unsigned char* buffer, unsigned long dwSize);
    int   Get_CRC(unsigned char* buffer, unsigned int dwSize);

public:
    //unsigned long crc32_table[256]; // Lookup table arrays
    unsigned int crc32_table[256]; // Lookup table arrays
};

#endif // !__C_CRC32_H__

