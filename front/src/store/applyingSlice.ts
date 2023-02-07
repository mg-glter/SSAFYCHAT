import { createSlice, PayloadAction } from '@reduxjs/toolkit'
import type { RootState } from './store'
import {search} from '../api/applying'

// Define a type for the slice state
interface ApplyingState {
  applyingMentorings: {},
}

// Define the initial state using that type
const initialState: ApplyingState = {
  applyingMentorings: []
}

export const ApplyingSlice = createSlice({
  name: 'applying',
  initialState,
  reducers: {
    searchMentoring: (state, payload: PayloadAction<[]>) => {
      state.applyingMentorings
    }
  }
})

export const { searchMentoring } = ApplyingSlice.actions

// Other code such as selectors can use the imported `RootState` type
export const selectCount = (state: RootState) => state.counter.value

export default ApplyingSlice.reducer