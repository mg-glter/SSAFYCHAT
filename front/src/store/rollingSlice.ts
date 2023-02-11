import { createSlice, PayloadAction } from '@reduxjs/toolkit'
import { rootCertificates } from 'tls'
import type { RootState } from './store'

interface RollingInfo{
    id: number,
    color: string,
    content: string,
    attached: number,
    posX: number,
    posY: number,
}

// Define a type for the slice state
interface RollingState {
    rollings: Array<RollingInfo>,
}

interface AttachingInfo{
  id: number,
  posX: number,
  posY: number,
}

// Define the initial state using that type
const initialState: RollingState = {
    rollings: [      
      {
        id: 0,
        color: "sticky_red",
        content: "저는 0번입니다! 길지 않은 멘토링 시간 동안, 좋은 정보들을 제공해주신 멘토님 감사드립니다. 이번 채용 공고에 지원해서 꼭 같은 부서에서 만날 수 있었으면 좋겠습니다. 연락드리겠습니다!",
        attached: 1,
        posX: 10,
        posY: 10,
    },
    {
      id: 1,
      color: "sticky_red",
      content: "저는 !번입니다! 길지 않은 멘토링 시간 동안, 좋은 정보들을 제공해주신 멘토님 감사드립니다. 이번 채용 공고에 지원해서 꼭 같은 부서에서 만날 수 있었으면 좋겠습니다. 연락드리겠습니다!",
      attached: 0,
      posX: 10,
      posY: 10,
    },
    ],
}

export const RollingSlice = createSlice({
  name: 'rolling',
  initialState,
  reducers: {
    tempAddRolling: (state, action: PayloadAction<AttachingInfo>)=>{
      const rollingInfo: RollingInfo = {
        id: Math.floor(Math.random()*100000),
        color: "sticky_red",
        content: "길지 않은 멘토링 시간 동안, 좋은 정보들을 제공해주신 멘토님 감사드립니다. 이번 채용 공고에 지원해서 꼭 같은 부서에서 만날 수 있었으면 좋겠습니다. 연락드리겠습니다!",
        attached: 1,
        posX: Math.random()*1000,
        posY: Math.random()*1000,
      }
    
      state.rollings.push(rollingInfo);
      for(let i = 0; i < state.rollings.length; ++i){
        if(state.rollings[i].id === action.payload.id){
            state.rollings.splice(i,1);
        }
      }
    },
    attachRolling:(state, action: PayloadAction<AttachingInfo>)=>{
      for(let i = 0; i < state.rollings.length; ++i){
        if(state.rollings[i].id === action.payload.id){
            state.rollings[i].attached = 1;
            state.rollings[i].posX = action.payload.posX;
            state.rollings[i].posY = action.payload.posY;
        }
      }
    },
    removeRolling:(state, action: PayloadAction<AttachingInfo>)=>{
      for(let i = 0; i < state.rollings.length; ++i){
        if(state.rollings[i].id === action.payload.id){
            state.rollings[i].attached = 0;
            state.rollings[i].posX = action.payload.posX;
            state.rollings[i].posY = action.payload.posY;
        }
      }
    }
  }
})

export const { tempAddRolling, attachRolling, removeRolling} = RollingSlice.actions

// Other code such as selectors can use the imported `RootState` type
export const selectCount = (state: RootState) => state.rolling

export default RollingSlice.reducer