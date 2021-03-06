/**
 * Created by Jesse Onolememen. 26/02/2021
 */

import React from 'react'
import { Box, BoxProps } from '@chakra-ui/react'

type SidebarFooterProps = BoxProps

const SidebarFooter = (props: SidebarFooterProps) => (
  <Box borderTopWidth={0.5} px={3} py={2} fontSize="sm" {...props}>
    SidebarFooter
  </Box>
)

export { SidebarFooter }
