#include "wdt_hdl.h"


/* ȫ�ֿ��Ź�ʵ�� */
XScuWdt wdtInstance;
/**
 * @brief ��ʼ��˽�п��Ź�
 * @param InstancePtr ���Ź�ʵ��ָ��
 * @return XST_SUCCESS�ɹ�������ʧ��
 */
int Wdt_Init(XScuWdt *InstancePtr) {
    XScuWdt_Config *Config;

    /* 1. ��ȡӲ������ */
    Config = XScuWdt_LookupConfig(WDT_DEVICE_ID);
    if (!Config) return XST_FAILURE;

    /* 2. ��ʼ�����Ź� */
    if (XScuWdt_CfgInitialize(InstancePtr, Config, Config->BaseAddr) != XST_SUCCESS) {
        return XST_FAILURE;
    }

    /* 3. ����Ϊ���Ź�ģʽ���Ƕ�ʱ����*/
    XScuWdt_SetWdMode(InstancePtr);

    /* 4. ���س�ʱֵ������ */
    XScuWdt_LoadWdt(InstancePtr, WDT_LOAD_VALUE);
    XScuWdt_Start(InstancePtr);

    /* 5. �״�ι�� */
    XScuWdt_RestartWdt(InstancePtr);

    return XST_SUCCESS;
}

/**
 * @brief ι������
 */
void Wdt_Feed(XScuWdt *InstancePtr) {
    XScuWdt_RestartWdt(InstancePtr);
}
