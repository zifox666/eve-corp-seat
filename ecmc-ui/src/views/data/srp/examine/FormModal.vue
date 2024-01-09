<template>
  <BasicModal v-bind="$attrs" @register="registerModal" :title="getTitle" @ok="handleSubmit">
    <BasicForm @register="registerForm" />
  </BasicModal>
</template>
<script lang="ts" setup>
  import { ref, computed, unref } from 'vue'
  import { BasicModal, useModalInner } from '/@/components/Modal'
  import { BasicForm, useForm } from '/@/components/Form/index'
  import { crudFormSchema } from './data'
  import { useMessage } from '/@/hooks/web/useMessage'
  import {  edit } from '/@/api/utils/srpLog'
  import { useCopyToClipboard } from '/@/hooks/web/useCopyToClipboard'
  const emit = defineEmits(['success', 'register'])
  const isUpdate = ref(true)
  const status = ref(1)
  const rowId = ref('')
  const characterName = ref('')

  const [registerForm, { setFieldsValue, resetFields, validate }] = useForm({
    labelWidth: 100,
    baseColProps: { span: 24 },
    schemas: crudFormSchema,
    showActionButtonGroup: false,
    actionColOptions: {
      span: 23,
    },
  })
  const { createMessage } = useMessage()
  const getTitle = computed(() => (unref(status) === 2 ? '通过补损申请' : '拒绝补损申请'))
  const [registerModal, { setModalProps, closeModal }] = useModalInner(async (data) => {
    await resetFields()
    setModalProps({ confirmLoading: false })
    isUpdate.value = !!data?.isUpdate
    status.value = data?.status
    characterName.value = data?.characterName
    rowId.value = data.record.id
    console.log(data)
    setFieldsValue({
      spContent: data?.spContent || (unref(status) === 2 ? '请打开EVE钱包，检查自动邮件发送时间附近的交易记录，筛选项改为军团账户支取。' : '不符合补损规定/没有相关条例，若有异议请联系梧间栖或者游戏内邮件Unt1L 1tG0nE说明情况。'), // 设置字段的默认值
      amount: data.record.amount
    })
  })



  async function handleSubmit() {
    try {
      const values = await validate()
      setModalProps({ confirmLoading: true })
      await edit({ ...values, id: rowId.value, status: status.value === 2?'2':'3' })
      createMessage.success('补损审批完成,用户名已复制')
      useCopyToClipboard(characterName.value)

      closeModal()
      emit('success', { isUpdate: unref(isUpdate), values: { ...values, id: rowId.value } })
    } finally {
      setModalProps({ confirmLoading: false })
    }
  }

</script>
